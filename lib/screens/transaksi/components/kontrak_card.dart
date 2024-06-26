import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';
import 'package:http/http.dart' as http;

import '../../../constants.dart';

class KontrakCard extends StatelessWidget {
  const KontrakCard({
    Key? key,
    required this.produk,
  }) : super(key: key);

  final Produk produk;

  @override
  Widget build(BuildContext context) {
    Future<String> fetchImage(String namapic) async {
      final response = await http
          .get(Uri.parse('${Variables.baseUrl}/assets/img/produk/${namapic}'));
      print(response.body);
      print('${Variables.baseUrl}/assets/img/produk/${namapic}');

      if (response.statusCode == 200) {
        return '${Variables.baseUrl}/assets/img/produk/${namapic}';
      } else {
        throw Exception('Gagal memuat gambar');
      }
    }

    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: FutureBuilder(
                future: fetchImage(produk.fotoProduk!),
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
        Container(
          padding: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                produk.namaProduk!,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              const SizedBox(height: 8),
              Text(
                produk.descProduk!,
                maxLines: 5,
                overflow: TextOverflow.visible,
                softWrap: true,
                style: const TextStyle(color: kSecondaryColor),
              ),
            ],
          ),
        )
      ],
    );
  }
}
