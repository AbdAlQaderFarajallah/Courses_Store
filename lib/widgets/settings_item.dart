import 'package:flutter/material.dart';

import '../screens/change_password_screen.dart';

class SettingsItem extends StatelessWidget {
  SettingsItem({required this.text, required this.iconName});

  IconData iconName;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: ListTile(
            leading: Icon(
              iconName,
              color: const Color(0xFFC68418),
            ),
            title: Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            trailing:const  Icon((Icons.arrow_forward_ios), color: Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChangePassword(),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
