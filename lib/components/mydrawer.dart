import 'package:flutter/material.dart';

import 'mylisttile.dart';

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
              SizedBox(
                height: 180,
                child: DrawerHeader(
                  child: Image.asset('assets/beets_2.png'),
                ),
              ),

              // listtile
              MyListTile(
                text: 'Shop',
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart_outlined,
                onTap: () {
                  Navigator.pushNamed(context, '/cartpage');
                },
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
            ),
          ),
        ],
      ),
    );
  }
}
