import 'package:final_project_flutter/screens/app/add_course_screen.dart';
import 'package:final_project_flutter/screens/app/home_screen.dart';
import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawar_widget.dart';
import 'cart_screen.dart';
import 'courses_screen.dart';
import 'products_screen.dart';
import 'setting_screen.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        //FFE7789E
        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => Navigator.of(context).pushNamed("/tabs"),
            //onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),) ),
            color: Colors.black,
          ),
        ],
      ),
      drawer: const DrawarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Center(
          child: Image.asset(
            'assets/img_2.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
