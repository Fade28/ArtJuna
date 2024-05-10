import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

final List<Product> demoAlat = [
  Product(
    id: 1,
    images: [
      "assets/images/keso_keso1.jpg",
      "assets/images/keso_keso2.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
    ],
    title: "Keso Keso",
    price: "150.000",
    description: descriptionalat,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/gendang bulo1.png",
      "assets/images/gendang bulo2.webp",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gendang Bulo",
    price: "250.000",
    description: descriptionalat,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/puik-puik.webp",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Puik - Puik",
    price: "120.000",
    description: descriptionalat,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/keso_keso1.jpg",
      "assets/images/keso_keso2.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
    ],
    title: "Keso Keso",
    price: "150.000",
    description: descriptionalat,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/gendang bulo1.png",
      "assets/images/gendang bulo2.webp",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gendang Bulo",
    price: "150.000",
    description: descriptionalat,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/puik-puik.webp",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Puik - Puik",
    price: "150.000",
    description: descriptionalat,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];

List<Product> demoTari = [
  Product(
    id: 1,
    images: [
      "assets/images/pa bitte.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
    ],
    title: "Tari Pa Bitte",
    price: "300.000",
    description: descriptiontari,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/tari kipas.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tari Kipas",
    price: "450.000",
    description: descriptiontari,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/pa bitte.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
    ],
    title: "Tari Pa Bitte",
    price: "250.000",
    description: descriptiontari,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/tari kipas.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tari Kipas",
    price: "150.000",
    description: descriptiontari,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/pa bitte.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
    ],
    title: "Tari Pa Bitte",
    price: "150.000",
    description: descriptiontari,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/tari kipas.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tari Kipas",
    price: "150.000",
    description: descriptiontari,
    rating: 4.1,
    isPopular: true,
  ),
];

const String descriptionalat = "Alat Traditiopnal di sewakan per hari";

const String descriptiontari =
    "Tarian sudah include costum dan make up hitungan per Event";
