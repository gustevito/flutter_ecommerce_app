import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimal_ecommerce_app/components/button.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/cart_tile.dart';
import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart function
  void removeItemFromCart(BuildContext context, Product product) {
    context.read<Shop>().removeFromCart(product);
  }

  void payButton(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text(
            'It works! Connect this app to your payment backend and you\'re good to go'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.amber),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Your Cart',
          style: GoogleFonts.dmSerifDisplay(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          // cart list
          Expanded(
            child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  // get item in cart
                  final item = cart[index];

                  // return as a cart tile
                  return CartTile(
                      title: Text(item.name),
                      subtitle: Text(item.price.toStringAsFixed(2)),
                      onPressed: () {
                        var snack;
                        void closeSnack() {
                          snack.close();
                        }

                        int removeIndex = index;

                        Product product = item;

                        Get.closeCurrentSnackbar();
                        snack = Get.snackbar(
                          'Product Removed',
                          product.name,
                          snackPosition: SnackPosition.BOTTOM,
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          animationDuration: const Duration(milliseconds: 300),
                          mainButton: TextButton(
                            onPressed: () {
                              if (removeIndex != -1) {
                                context.read<Shop>().addToCart(product);
                                removeIndex = -1;
                              }
                              closeSnack();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
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

                        removeItemFromCart(context, item);
                      });
                }),
          ),

          // pay button
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: MyButton(
              onTap: () => payButton(context),
              child: const Text(
                'Checkout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
