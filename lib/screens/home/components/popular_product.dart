// import 'package:flutter/material.dart';

// import '../../../components/product_card.dart';
// import '../../../models/Product.dart';
// import '../../details/details_screen.dart';
// import '../../products/products_screen.dart';
// import 'section_title.dart';

// class PopularProducts extends StatefulWidget {
//   const PopularProducts({
//     super.key,
//     required this.data,
//     required this.judul,
//   });

//   final List<Product> data;
//   final String judul;

//   @override
//   State<PopularProducts> createState() => _PopularProductsState();
// }

// class _PopularProductsState extends State<PopularProducts> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SectionTitle(
//             title: widget.judul,
//             press: () {
//               Navigator.pushNamed(context, ProductsScreen.routeName);
//             },
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               ...List.generate(
//                 widget.data.length,
//                 (index) {
//                   if (widget.data[index].isPopular) {
//                     return Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: ProductCard(
//                         product: widget.data[index],
//                         onPress: () => Navigator.pushNamed(
//                           context,
//                           DetailsScreen.routeName,
//                           arguments: ProductDetailsArguments(
//                               product: widget.data[index]),
//                         ),
//                       ),
//                     );
//                   }

//                   return const SizedBox
//                       .shrink(); // here by default width and height is 0
//                 },
//               ),
//               const SizedBox(width: 20),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
