import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // header
          Column(
            children: [
              const SizedBox(
                height: 180,
                child: DrawerHeader(
                  child: ImageIcon(
                    AssetImage('assets/logos/beets_4.png'),
                    size: 230,
                  ),
                ),
              ),

              // listtile
              MyListTile(
                text: 'Shop',
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                ),
              ),

              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pushNamed(context, '/cartpage');
                },
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                ),
              ),
            ],
          ),

          //exit

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: MyListTile(
                text: 'Sair',
                icon: Icons.exit_to_app_rounded,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/intropage', (route) => false),
                trailing: null),
          ),
        ],
      ),
    );
  }
}
