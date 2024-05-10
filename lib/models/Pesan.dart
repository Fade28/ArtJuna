import 'package:flutter/material.dart';

class Pesan {
  final int id;
  final String Nama, description;
  final List<String> images;

  Pesan({
    required this.id,
    required this.images,
    required this.Nama,
    required this.description,
  });
}

// Our demo Products

final List<Pesan> demoPesan = [
  Pesan(
    id: 1,
    images: [
      "assets/favicon.png",
    ],
    Nama: "Ukm Tari",
    description: "saya mencari gendang",
  ),
];
