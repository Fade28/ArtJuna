import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';
import 'package:shop_app/screens/transaksi/components/kontrak_card.dart';
import 'package:shop_app/screens/transaksi/components/check_out_card.dart';

class KontrakScreen extends StatefulWidget {
  static String routeName = "/kontrak";
  const KontrakScreen({super.key});

  @override
  State<KontrakScreen> createState() => _KontrakScreenState();
}

class _KontrakScreenState extends State<KontrakScreen> {
  @override
  Widget build(BuildContext context) {
    final KontrakDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as KontrakDetailsArguments;
    final produk = agrs.produk;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kontrak",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              KontrakCard(produk: produk),
              // SpecialOffers(),
              const SizedBox(height: 20),
              CheckoutCard(
                produk: produk,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class KontrakDetailsArguments {
  final Produk produk;

  KontrakDetailsArguments({required this.produk});
}
