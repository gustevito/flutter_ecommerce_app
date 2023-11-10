import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          // image
          Icon(Icons.favorite),

          // name
          Text(product.name),

          // description
          Text(product.description),

          // price
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
