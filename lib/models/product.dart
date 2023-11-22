import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String description;
  final DecorationImage? image;
  //final String imagePath;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    //required this.imagePath,
  });
}
