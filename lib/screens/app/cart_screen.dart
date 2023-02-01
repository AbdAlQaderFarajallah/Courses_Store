import 'package:final_project_flutter/screens/app/add_course_screen.dart';
import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(15),
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          shrinkWrap: true,
          children: <Widget>[
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/rachelle.jpg',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: Text(
              'Rachelle D.Michael',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(height: 20),
            const Divider(),
            ListTile(
              leading: const Icon((Icons.home), color: Color(0xFFF19DBA)),
              title: const Text('Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ));
              },
            ),
            const SizedBox(height: 20),
            const Divider(),
            ListTile(
              leading: const Icon((Icons.home), color: Color(0xFFF19DBA)),
              title: const Text('Add Course',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const AddCourses(),
                //     ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon((Icons.collections_bookmark),
                  color: Color(0xFFF19DBA)),
              title: const Text('Course',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Courses(),
                    ));
              },
            ),
            const Divider(),
            const ListTile(
              leading: Icon((Icons.my_library_books), color: Color(0xFFF19DBA)),
              title: Text('News',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const Divider(),
            ListTile(
              leading:
                  const Icon((Icons.shopping_bag), color: Color(0xFFF19DBA)),
              title: const Text('Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Products(),
                    ));
              },
            ),
            const Divider(),
            ListTile(
              leading:
                  const Icon((Icons.shopping_cart), color: Color(0xFFF19DBA)),
              title: const Text('Cart',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cart(),
                    ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon((Icons.person_pin), color: Color(0xFFF19DBA)),
              title: const Text('My Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProfile(),
                    ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon((Icons.settings), color: Color(0xFFF19DBA)),
              title: const Text('Setting',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon((Icons.logout), color: Color(0xFFF19DBA)),
              title: const Text('Logout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
            ),
            const Divider(),
          ],
        ),
      ),
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
