import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_with_provider/provider/product_provider.dart';
import 'package:shopping_cart_with_provider/widgets/custom_appbar.dart';
import 'package:shopping_cart_with_provider/widgets/custom_drawer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String name = "cart_screen";

  @override
  Widget build(BuildContext context) {
    List cartList = context.read<ProductProvider>().getCart();

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: Consumer<ProductProvider>(
          builder: (context, value, child) => ListView.separated(
            separatorBuilder: (context, index) => Divider(indent: 20),

            itemCount: cartList.length,

            itemBuilder: (context, index) => ListTile(
              title: Text(cartList[index]['name']),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<ProductProvider>().removeFromCart(
                        cartList[index],
                      );
                    },
                    icon: Icon(Icons.delete_forever),
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
