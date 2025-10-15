import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_with_provider/provider/product_provider.dart';
import 'package:shopping_cart_with_provider/screens/cart_screen.dart';
import 'package:shopping_cart_with_provider/screens/home_screen.dart';

class ShoppingCartWithProvider extends StatelessWidget {
  const ShoppingCartWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.green),
        initialRoute: HomeScreen.name,
        routes: {
          HomeScreen.name: (_) => HomeScreen(),
          CartScreen.name: (_) => CartScreen(),
        },
      ),
    );
  }
}
