import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimal_ecommerce_app/models/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce_app/models/shop.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  // add to cart
  void addToCart(BuildContext context) {
    // dialog box to confirm
    context.read<Shop>().addToCart(product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 260,
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
                    image: product.image,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
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
                style: const TextStyle(fontSize: 20),
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
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    var snack;
                    void closeSnack() {
                      snack.close();
                    }

                    Get.closeCurrentSnackbar();
                    snack = Get.snackbar(
                      'Product Added',
                      product.name,
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      animationDuration: const Duration(milliseconds: 200),
                      mainButton: TextButton(
                        onPressed: () {
                          context.read<Shop>().removeFromCart(product);
                          closeSnack();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Undo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );

                    addToCart(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
