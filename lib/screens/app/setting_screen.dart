import 'package:final_project_flutter/screens/app/add_course_screen.dart';
import 'package:final_project_flutter/screens/app/products_screen.dart';
import 'package:final_project_flutter/screens/app/home_screen.dart';
import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawar_widget.dart';
import '../../widgets/settings_item.dart';
import 'cart_screen.dart';
import 'courses_screen.dart';
import 'my_profile_screen.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        //FFE7789E
        centerTitle: true,
      ),
      drawer: const DrawarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            SettingsItem(text: 'Change Password', iconName: Icons.lock),
            SettingsItem(text: 'Language', iconName: Icons.language),
            SettingsItem(text: 'About Us', iconName: Icons.ad_units_sharp),
            SettingsItem(text: 'Contact Us', iconName: Icons.phone),
            SettingsItem(text: 'Privacy Policy', iconName: Icons.account_box),
            SettingsItem(text: 'Terms & Conditions', iconName: Icons.newspaper),
          ],
        ),
      ),
    );
  }
}
