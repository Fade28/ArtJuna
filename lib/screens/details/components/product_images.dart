import 'package:flutter/material.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';
import 'package:http/http.dart' as http;

import '../../../constants.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Produk product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
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

  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
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
        // SizedBox(height: 20),
      ],
    );
  }
}

class SmallProductImage extends StatefulWidget {
  const SmallProductImage(
      {super.key,
      required this.isSelected,
      required this.press,
      required this.image});

  final bool isSelected;
  final VoidCallback press;
  final String image;

  @override
  State<SmallProductImage> createState() => _SmallProductImageState();
}

class _SmallProductImageState extends State<SmallProductImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(widget.isSelected ? 1 : 0)),
        ),
        child: Image.asset(widget.image),
      ),
    );
  }
}
