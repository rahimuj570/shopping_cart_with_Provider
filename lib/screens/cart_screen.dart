import 'package:flutter/material.dart';
import 'package:shopping_cart_with_provider/widgets/custom_appbar.dart';
import 'package:shopping_cart_with_provider/widgets/custom_drawer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String name = "cart_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: ListView.separated(
          separatorBuilder: (context, index) => Divider(indent: 20),

          itemCount: 10,

          itemBuilder: (context, index) => ListTile(
            title: Text('data'),
            // trailing: Text('d/ata'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
              ],
            ),
          ),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
