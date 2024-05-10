import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc/pesan/chat_bloc.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/response/pesan_detail_respon_model.dart';
import 'package:shop_app/models/response/pesan_respon_model.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  static String routeName = "/chat_screen";

  const ChatScreen({super.key});
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String idg, String pengirim, String text) {
    _textController.clear();
    context.read<ChatBloc>().add(
          ChatEvent.sendPesan(
            id: idg,
            pengirim: pengirim,
            pesan: text,
          ),
        );
  }

  Future<String> fetchImage(String namapic) async {
    final response = await http
        .get(Uri.parse('${Variables.baseUrl}/assets/img/profil/${namapic}'));
    print(response.body);
    print('${Variables.baseUrl}/assets/img/profil/${namapic}');

    if (response.statusCode == 200) {
      return '${Variables.baseUrl}/assets/img/profil/${namapic}';
    } else {
      throw Exception('Gagal memuat gambar');
    }
  }

  @override
  Widget build(BuildContext context) {
    final PesanDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as PesanDetailsArguments;
    final profil = agrs.profil;
    final user = agrs.iduser;
    context.read<ChatBloc>().add(ChatEvent.getPesan(id: profil.idPesanGrup!));
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FutureBuilder(
              future: fetchImage(profil.foto!),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data.toString()),
                  );
                }
              },
            ),
            SizedBox(width: 10),
            Text(profil.nama!),
          ],
        ),
      ),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Text(message),
              sukses: (respon) {
                context
                    .read<ChatBloc>()
                    .add(ChatEvent.getPesan(id: profil.idPesanGrup!));
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (respon) {
                return Column(
                  children: <Widget>[
                    Flexible(
                      child: ListView.builder(
                        reverse: true,
                        padding: const EdgeInsets.all(8.0),
                        itemCount: respon.pesandetail!.length,
                        itemBuilder: (_, int index) => ChatMessage(
                          pesan: respon.pesandetail![index],
                          id: respon.pro!,
                        ),
                      ),
                    ),
                    const Divider(height: 1.0),
                    Container(
                      decoration:
                          BoxDecoration(color: Theme.of(context).cardColor),
                      child: _buildTextComposer(
                        profil.idPesanGrup!,
                        user,
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }

  Widget _buildTextComposer(String id, String pengirim) {
    return IconTheme(
      data: const IconThemeData(color: kPrimaryColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 16.0),
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () =>
                  _handleSubmitted(id, pengirim, _textController.text),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.pesan, required this.id});

  final Pesandetail pesan;
  final Pro id;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: pesan.pengirim != id.idSanggar
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: pesan.pengirim != id.idSanggar
                ? const EdgeInsets.only(left: 8.0)
                : const EdgeInsets.only(right: 8.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: pesan.pengirim != id.idSanggar
                  ? kSecondaryColor
                  : kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                    pesan.pengirim != id.idSanggar ? 12.0 : 2.0),
                bottomRight: Radius.circular(
                    pesan.pengirim != id.idSanggar ? 2.0 : 12.0),
                topLeft: const Radius.circular(12.0),
                topRight: const Radius.circular(12.0),
              ),
            ),
            child: Text(
              pesan.pesan!,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PesanDetailsArguments {
  final Pesan profil;
  final String iduser;

  PesanDetailsArguments({required this.iduser, required this.profil});
}
