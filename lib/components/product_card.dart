import 'package:flutter/material.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRetio;
  final Produk product;
  final VoidCallback onPress;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
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
                  future: fetchImage(widget.product.fotoProduk!),
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
              widget.product.namaProduk!,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rp. ${widget.product.harga}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                // InkWell(
                //   borderRadius: BorderRadius.circular(50),
                //   onTap: () {},
                //   child: Container(
                //     padding: const EdgeInsets.all(6),
                //     height: 24,
                //     width: 24,
                //     decoration: BoxDecoration(
                //       color: widget.product.isFavourite
                //           ? kPrimaryColor.withOpacity(0.15)
                //           : kSecondaryColor.withOpacity(0.1),
                //       shape: BoxShape.circle,
                //     ),
                //     child: SvgPicture.asset(
                //       "assets/icons/Heart Icon_2.svg",
                //       colorFilter: ColorFilter.mode(
                //           widget.product.isFavourite
                //               ? const Color(0xFFFF4848)
                //               : const Color(0xFFDBDEE4),
                //           BlendMode.srcIn),
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
