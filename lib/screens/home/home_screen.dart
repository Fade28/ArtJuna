import 'package:flutter/material.dart';
import 'package:shop_app/screens/sanggar/components/daftar_barang.dart';
import 'package:shop_app/screens/sanggar/components/daftar_jasa.dart';
import 'package:shop_app/screens/home/components/daftar_sanggar.dart';

import 'components/home_header.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              // SpecialOffers(),
              SizedBox(height: 20),
              DaftarSanggar(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
