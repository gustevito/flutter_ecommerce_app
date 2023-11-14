import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/components/drawer.dart';
import 'package:minimal_ecommerce_app/components/product_tile.dart';
import 'package:minimal_ecommerce_app/models/product.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/shop.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const MyDrawer(),
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.amber),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,

        // logo
        title: ImageIcon(
          AssetImage('assets/beets_4.png'),
          size: 120,
        ),

        // theme switch
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dark_mode_outlined,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shop',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 30,
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                // subtitle
                Text(
                  "on your favorite hive of fashion",
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // products
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: ((context, index) {
                // get each product from the shop
                final product = products[index];

                // return UI element
                return ProductTile(product: product);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
