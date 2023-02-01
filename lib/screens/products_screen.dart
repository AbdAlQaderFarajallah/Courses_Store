import 'package:final_project_flutter/screens/add_course_screen.dart';
import 'package:final_project_flutter/screens/cart_screen.dart';
import 'package:final_project_flutter/screens/courses_screen.dart';
import 'package:final_project_flutter/screens/home_screen.dart';
import 'package:final_project_flutter/screens/login_screen.dart';
import 'package:final_project_flutter/screens/my_profile_screen.dart';
import 'package:final_project_flutter/screens/product_details_screen.dart';
import 'package:final_project_flutter/screens/setting_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/product_card.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Products',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cart(),
                )),
            color: Colors.black,
          ),
        ],
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddCourses(),
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [

        ProductCard(imgURL:'assets/imglist1.jpg' , titleText:  " The Earth Ceramic Coffee Mug ", price: '280' ),
        ProductCard(imgURL:'assets/imglist2.jpg' , titleText:  " Numeric Flashcard For Kids ", price: '387' ),
        ProductCard(imgURL:'assets/imglist3.jpg' , titleText:   " Short Love Stories ", price: '650' ),
        ProductCard(imgURL:'assets/imglist4.jpg' , titleText:  " Time Management ", price: '75' ),
        ProductCard(imgURL:'assets/imglist5.jpg' , titleText:  " Pink Coffee Mug ", price: '280' ),
        ProductCard(imgURL:'assets/imglist6.jpg' , titleText:  " Kids Bed Time Stories ", price: '190' ),

      ],),
    );
  }
}
