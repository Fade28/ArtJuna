import 'package:flutter/material.dart';
import 'package:shop_app/models/response/pesan_respon_model.dart';
import 'package:shop_app/screens/pesan/chat_screen.dart';
import 'package:http/http.dart' as http;

import '../../../constants.dart';

class PesanCard extends StatelessWidget {
  const PesanCard({
    Key? key,
    required this.pesan,
    required this.user,
  }) : super(key: key);

  final Pesan pesan;
  final String user;

  @override
  Widget build(BuildContext context) {
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

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChatScreen.routeName,
            arguments: PesanDetailsArguments(
              profil: pesan,
              iduser: user,
            ));
      },
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FutureBuilder(
                  future: fetchImage(pesan.foto!),
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
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                pesan.nama!,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  textAlign: TextAlign.left,
                  pesan.pesan!,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: false,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
