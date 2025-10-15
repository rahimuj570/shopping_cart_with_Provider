import 'package:flutter/material.dart';
import 'package:shopping_cart_with_provider/screens/cart_screen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint(ModalRoute.of(context)?.settings.name);
    return AppBar(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      actionsPadding: EdgeInsets.all(10),
      title: Text('Cart with Provider', style: TextStyle(fontSize: 20)),
      actions: [
        IconButton(
          onPressed: () {
            if (ModalRoute.of(context)?.settings.name != CartScreen.name) {
              Navigator.pushNamed(context, CartScreen.name);
            }
          },

          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
