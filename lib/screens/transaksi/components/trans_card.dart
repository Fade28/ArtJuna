import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/response/trans_respon_model.dart';
import 'package:http/http.dart' as http;

import '../../../constants.dart';

class TransCard extends StatelessWidget {
  const TransCard({
    Key? key,
    required this.trans,
  }) : super(key: key);

  final Transaksi trans;

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
                future: fetchImage(trans.fotoProduk!),
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
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              trans.namaProduk!,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            Text(
              '${formatDate(trans.tglMulai!, [
                    dd,
                    '/',
                    mm,
                    '/',
                    yyyy
                  ])} - ${formatDate(trans.tglAkhir!, [
                    dd,
                    '/',
                    mm,
                    '/',
                    yyyy
                  ])}',
              style: TextStyle(fontSize: 12, color: kSecondaryColor),
            ),
            const SizedBox(height: 8),
            Text(
              "Rp. ${trans.hargaJadi}",
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: kPrimaryColor),
            ),
          ],
        )
      ],
    );
  }
}
