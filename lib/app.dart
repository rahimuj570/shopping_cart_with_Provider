import 'package:flutter/material.dart';
import 'package:shopping_cart_with_provider/screens/home_screen.dart';

class ShoppingCartWithProvider extends StatelessWidget {
  const ShoppingCartWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: HomeScreen(),
    );
  }
}
