import 'package:flutter/material.dart';

import '../screens/app/product_details_screen.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    required this.imgURL,
    required this.price,
    required this.titleText,
  });

  String imgURL;
  String titleText;
  String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Image.asset(
              imgURL,
              fit: BoxFit.cover,
              height: 200,
              width: 150,
            ),
            title: Text(
              titleText,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetail(),
                  ));
            },
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(" $price KWD ",
                  style: const TextStyle(
                      color: Color(0xFFC68418),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}
