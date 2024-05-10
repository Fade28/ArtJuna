import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoAlat[0], numOfItem: 2),
  Cart(product: demoAlat[1], numOfItem: 1),
  Cart(product: demoTari[3], numOfItem: 1),
];
