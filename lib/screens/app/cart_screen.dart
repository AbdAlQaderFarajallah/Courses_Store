import 'package:final_project_flutter/screens/app/add_course_screen.dart';
import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawar_widget.dart';
import 'courses_screen.dart';
import 'home_screen.dart';
import 'my_profile_screen.dart';
import 'products_screen.dart';
import 'setting_screen.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Cart',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        //FFE7789E
        centerTitle: true,
      ),
      drawer: const DrawarWidget(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 15,
              width: 100,
            ),
            Image.asset('assets/cart.png', height: 330, width: 330),
            const SizedBox(
              height: 20,
              width: 100,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text(
                'Whoops!',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ]),
            const SizedBox(
              height: 22,
              width: 100,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Your cart is empty now. Check our \n                products and By it.",
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.9),
                  fontSize: 15,
                ),
              ),
            ]),
            const SizedBox(
              height: 15,
              width: 100,
            ),
            Container(
              width: 300,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFFF19DBA),
                //borderRadius: BorderRadius.circular(24),
              ),
              child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Products(),
                    )),
                style: TextButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color(0XFFF19DBA),
                ),
                child: const Text(
                  "  GO TO PRODUCTS  ",
                  style: TextStyle( fontSize: 22 , color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
