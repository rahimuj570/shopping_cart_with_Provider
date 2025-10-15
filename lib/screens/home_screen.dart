import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          actionsPadding: EdgeInsets.all(10),
          title: Text('Cart with Provider'),
          actions: [Icon(Icons.shopping_cart)],
        ),
        drawer: Drawer(
          width: 200,
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(),
                    Text(
                      'Md.Rahimujjaman Rahim',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text('Totat Carted: 10'),
                  ],
                ),
              ),
              ListTile(
                hoverColor: Colors.green.shade100,
                onTap: () {},
                leading: Icon(Icons.shopping_cart),
                title: Text('Cart'),
              ),
              ListTile(
                hoverColor: Colors.green.shade100,
                onTap: () {},
                leading: Icon(Icons.shopping_bag),
                title: Text('Shop'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
