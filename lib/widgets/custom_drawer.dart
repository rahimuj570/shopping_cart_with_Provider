import 'package:flutter/material.dart';
import 'package:shopping_cart_with_provider/screens/cart_screen.dart';
import 'package:shopping_cart_with_provider/screens/home_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(),
                Text('Md.Rahimujjaman Rahim', style: TextStyle(fontSize: 14)),
                Text('Totat Carted: 10'),
              ],
            ),
          ),
          ListTile(
            hoverColor: Colors.green.shade100,
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != CartScreen.name) {
                Navigator.pushNamed(context, CartScreen.name);
              }
            },
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          ListTile(
            hoverColor: Colors.green.shade100,
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != HomeScreen.name) {
                Navigator.pushNamed(context, HomeScreen.name);
              }
            },
            leading: Icon(Icons.shopping_bag),
            title: Text('Shop'),
          ),
        ],
      ),
    );
  }
}
