import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/components/sanggar_card.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';
import 'package:shop_app/models/response/sanggar_respon_model.dart';
import 'package:shop_app/screens/sanggar/sanggar_screen.dart';

import '../details/details_screen.dart';

class ListSanggarScreen extends StatefulWidget {
  const ListSanggarScreen({super.key});

  static String routeName = "/listsanggar";

  @override
  State<ListSanggarScreen> createState() => _ListSanggarScreenState();
}

class _ListSanggarScreenState extends State<ListSanggarScreen> {
  @override
  Widget build(BuildContext context) {
    final SanggarListArguments agrs =
        ModalRoute.of(context)!.settings.arguments as SanggarListArguments;
    final sangar = agrs.sanggar;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sanggar"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            itemCount: sangar.sanggar!.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              return SanggarCard(
                product: sangar.sanggar![index],
                onPress: () => Navigator.pushNamed(
                  context,
                  SanggarScreen.routeName,
                  arguments:
                      SanggarDetailsArguments(sanggar: sangar.sanggar![index]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SanggarListArguments {
  final SanggarResponModel sanggar;

  SanggarListArguments({required this.sanggar});
}
