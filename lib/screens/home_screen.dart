import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_with_provider/provider/product_provider.dart';
import 'package:shopping_cart_with_provider/widgets/custom_appbar.dart';
import 'package:shopping_cart_with_provider/widgets/custom_drawer.dart';
import 'package:shopping_cart_with_provider/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static String name = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List products = [];
  @override
  void initState() {
    // TODO: implement initState
    products = context.read<ProductProvider>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) =>
              ProductCard(product: products[index]),
        ),

        drawer: CustomDrawer(),
      ),
    );
  }
}
