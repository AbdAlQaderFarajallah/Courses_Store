import 'package:flutter/material.dart';

import '../screens/app/add_course_screen.dart';
import '../screens/app/cart_screen.dart';
import '../screens/app/courses_screen.dart';
import '../screens/app/home_screen.dart';
import '../screens/app/my_profile_screen.dart';
import '../screens/app/products_screen.dart';
import '../screens/app/setting_screen.dart';
import '../screens/auth/login_screen.dart';

class DrawarWidget extends StatelessWidget {
  const DrawarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          const SizedBox(height: 30),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  AddCourses(),
                  ));
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
            leading: const Icon((Icons.shopping_bag), color: Color(0xFFF19DBA)),
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
    );
  }
}
