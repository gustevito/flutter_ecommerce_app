import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/models/product.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  // add to cart
  void addToCart(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  child: Icon(
                    Icons.favorite,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // name
              Text(
                product.name,
                style: GoogleFonts.josefinSans(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 6),

              // description
              Text(
                product.description,
                style: GoogleFonts.josefinSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),

          // price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20),
              ),

              // add button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    addToCart(context);
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
