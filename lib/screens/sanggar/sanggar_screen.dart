import 'package:flutter/material.dart';
import 'package:shop_app/models/response/sanggar_respon_model.dart';
import 'package:shop_app/screens/sanggar/components/daftar_barang.dart';
import 'package:shop_app/screens/sanggar/components/daftar_jasa.dart';

import 'components/home_header.dart';

class SanggarScreen extends StatelessWidget {
  static String routeName = "/sanggar";

  const SanggarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final SanggarDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as SanggarDetailsArguments;
    final sanggar = agrs.sanggar;
    return Scaffold(
      appBar: AppBar(
        title: Text(sanggar.namaSanggar ?? 'Sanggar'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              DaftarBarang(
                ids: sanggar.idSanggar!,
              ),
              const SizedBox(height: 20),
              DaftarJasa(ids: sanggar.idSanggar!),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class SanggarDetailsArguments {
  final Sanggar sanggar;

  SanggarDetailsArguments({required this.sanggar});
}
