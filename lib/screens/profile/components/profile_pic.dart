import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/constants.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    required namapic,
    Key? key,
  })  : _namapic = namapic,
        super(key: key);
  final String _namapic;

  @override
  State<ProfilePic> createState() => _ProfilePicState(namapic: _namapic);
}

class _ProfilePicState extends State<ProfilePic> {
  String namapic;
  _ProfilePicState({required this.namapic});

  Future<String> fetchImage() async {
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
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          FutureBuilder(
            future: fetchImage(),
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
        ],
      ),
    );
  }
}
