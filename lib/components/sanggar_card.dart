import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/models/response/sanggar_respon_model.dart';

import '../constants.dart';

class SanggarCard extends StatefulWidget {
  const SanggarCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRetio;
  final Sanggar product;
  final VoidCallback onPress;

  @override
  State<SanggarCard> createState() => _SanggarCardState();
}

class _SanggarCardState extends State<SanggarCard> {
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
    return SizedBox(
      width: widget.width,
      child: GestureDetector(
        onTap: widget.onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: FutureBuilder(
                  future: fetchImage(widget.product.fotoSanggar!),
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
            const SizedBox(height: 8),
            Text(
              widget.product.namaSanggar!,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.product.alamatSanggar!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
