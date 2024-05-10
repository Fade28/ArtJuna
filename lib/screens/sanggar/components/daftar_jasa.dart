import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/screens/products/bloc/produk_bloc.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';

import '../../../components/product_card.dart';
import '../../details/details_screen.dart';
import '../../products/products_screen.dart';
import '../components/section_title.dart';

class DaftarJasa extends StatefulWidget {
  const DaftarJasa({super.key, required this.ids});

  final String ids;

  @override
  State<DaftarJasa> createState() => _DaftarJasaState();
}

class _DaftarJasaState extends State<DaftarJasa> {
  @override
  void initState() {
    // searchResults = products;
    context.read<ProdukBloc>().add(ProdukEvent.getLocalProduct(id: widget.ids));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProdukBloc, ProdukState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (produkResponModel) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SectionTitle(
                    title: "Jasa",
                    press: () {
                      List<Produk> data = produkResponModel.produk!
                          .where((element) => element.jenis == 'Jasa')
                          .toList();
                      Navigator.pushNamed(context, ProductsScreen.routeName,
                          arguments: ProdukListArguments(produk: data));
                    },
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(produkResponModel.produk!.length,
                          (index) {
                        if (produkResponModel.produk![index].jenis == 'Jasa') {
                          return Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ProductCard(
                              product: produkResponModel.produk![index],
                              onPress: () => Navigator.pushNamed(
                                context,
                                DetailsScreen.routeName,
                                arguments: ProductDetailsArguments(
                                    product: produkResponModel.produk![index]),
                              ),
                            ),
                          );
                        }
                        return const SizedBox(
                          height: 20,
                        );
                      }),
                      const SizedBox(width: 20),
                    ],
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
