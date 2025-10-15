import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.network(
                  product['imageUrl']!,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.error, size: 70),
                  height: 80,
                  width: double.infinity,
                ),
              ),
              Text(product['name']!),
              Text(product['price']!),
            ],
          ),
          Positioned(
            right: 5,
            top: 5,
            child: IconButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),

              constraints: BoxConstraints(maxHeight: 30, maxWidth: 30),
              iconSize: 14,
              padding: EdgeInsets.all(5),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
