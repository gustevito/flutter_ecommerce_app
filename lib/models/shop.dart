import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      price: 49.99,
      description: 'Item description',
    ),
    Product(
      name: 'Product 2',
      price: 49.99,
      description: 'Item description',
    ),
    Product(
      name: 'Product 3',
      price: 49.99,
      description: 'Item description',
    ),
    Product(
      name: 'Product 4',
      price: 49.99,
      description: 'Item description',
    ),
  ];

  // cart
  final List<Product> _cart = [];
  // get product
  List<Product> get shop => _shop;
  // get cart
  List<Product> get cart => _cart;
  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
