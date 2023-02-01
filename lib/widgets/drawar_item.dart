import 'package:flutter/material.dart';

class DrawarItem extends StatelessWidget {
  DrawarItem({
    required this.text,
    required this.pageName,
    required this.iconName,
  });

  IconData iconName;
  String text;
  String pageName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        const Divider(),
        ListTile(
          leading: Icon(
            (iconName),
            color: const Color(0xFFF19DBA),
          ),
          title: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, 'register_screen');
          },
        ),
      ],
    );
  }
}
