import 'package:final_project_flutter/screens/add_course_screen.dart';
import 'package:final_project_flutter/screens/cart_screen.dart';
import 'package:final_project_flutter/screens/change_password_screen.dart';
import 'package:final_project_flutter/screens/courses_screen.dart';
import 'package:final_project_flutter/screens/home_screen.dart';
import 'package:final_project_flutter/screens/login_screen.dart';
import 'package:final_project_flutter/screens/my_profile_screen.dart';
import 'package:final_project_flutter/screens/products_screen.dart';
import 'package:flutter/material.dart';

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
              leading: const Icon(
                (Icons.home),
                color: Color(0xFFF19DBA),
              ),
              title: const Text('Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const Divider(),
            ListTile(
              leading: const Icon(
                (Icons.home),
                color: Color(0xFFF19DBA),
              ),
              title: const Text('Add Course',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddCourses(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                (Icons.collections_bookmark),
                color: Color(0xFFF19DBA),
              ),
              title: const Text('Course',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Courses(),
                  ),
                );
              },
            ),
            const Divider(),
            const ListTile(
              leading: Icon(
                (Icons.my_library_books),
                color: Color(0xFFF19DBA),
              ),
              title: Text(
                'News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                (Icons.shopping_bag),
                color: Color(0xFFF19DBA),
              ),
              title: const Text('Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Products(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                (Icons.shopping_cart),
                color: Color(0xFFF19DBA),
              ),
              title: const Text(
                'Cart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
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
              leading: const Icon(
                (Icons.person_pin),
                color: Color(0xFFF19DBA),
              ),
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
              leading: const Icon(
                (Icons.settings),
                color: Color(0xFFF19DBA),
              ),
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
              leading: const Icon(
                (Icons.logout),
                color: Color(0xFFF19DBA),
              ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(
                  (Icons.lock),
                  color: Color(0xFFC68418),
                ),
                title: const Text(
                  "   Change Password ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(right: 35),
                  child: Icon((Icons.arrow_forward_ios), color: Colors.grey),
                ),
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
            const Divider(),
            const Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(
                  (Icons.language),
                  color: Color(0xFFC68418),
                ),
                title: Text(
                  "   Language ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 35),
                  child: Icon((Icons.arrow_forward_ios), color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}