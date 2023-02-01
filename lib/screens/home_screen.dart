import 'package:final_project_flutter/screens/add_course_screen.dart';
import 'package:final_project_flutter/screens/cart_screen.dart';
import 'package:final_project_flutter/screens/courses_screen.dart';
import 'package:final_project_flutter/screens/login_screen.dart';
import 'package:final_project_flutter/screens/my_profile_screen.dart';
import 'package:final_project_flutter/screens/products_screen.dart';
import 'package:final_project_flutter/screens/setting_screen.dart';
import 'package:final_project_flutter/widgets/drawar_item.dart';
import 'package:flutter/material.dart';

import '../widgets/container_image_widget.dart';
import '../widgets/container_small_image_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFECB7BF),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(15),
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          shrinkWrap: true,
          children: [
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
            DrawarItem(text: 'Home', pageName: 'home_screen', iconName:Icons.home ),
            DrawarItem(text: 'Add Course', pageName: 'add_courses_screen', iconName:Icons.add_circle_outline_rounded ),
            DrawarItem(text: 'Course', pageName: 'courses_screen', iconName:Icons.collections_bookmark ),
            DrawarItem(text: 'News', pageName: 'home_screen', iconName:Icons.my_library_books ),
            DrawarItem(text: 'Products', pageName: 'products_screen', iconName:Icons.shopping_bag ),
            DrawarItem(text: 'Cart', pageName: 'cart_screen', iconName:Icons.shopping_cart ),
            DrawarItem(text: 'My Profile', pageName: 'myProfile_screen', iconName:Icons.person_pin),
            DrawarItem(text: 'Setting', pageName: 'settings_screen', iconName:Icons.settings ),
            DrawarItem(text: 'Logout', pageName: 'register_screen', iconName:Icons.logout ),
          ],
        ),
      ),
      body: Column(
        children: [
//********************************************************************************************************************
          const ListTile(
            title: Text(
              'Checkout Our Demos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon((Icons.arrow_forward_ios), color: Colors.grey),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ContainerImageWidget(
                    imgURL: 'assets/img6.jpg',
                    text: 'How to Add lightning effect in photos'),
              ],
            ),
          ),
//********************************************************************************************************************
          const SizedBox(height: 7),
          const ListTile(
            title: Text(
              'Our Free Courses',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon((Icons.arrow_forward_ios), color: Colors.grey),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: const EdgeInsets.all(7),
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              shrinkWrap: true,
              children: [
                ContainerSmallImageWidget(
                    imgURL: 'assets/imgt.jpg', text: 'Computer science'),
              ],
            ),
          ),
//********************************************************************************************************************
          const SizedBox(height: 7),
//********************************************************************************************************************
          const ListTile(
            title: Text(
              'Checkout Paid Demos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon((Icons.arrow_forward_ios), color: Colors.grey),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: const EdgeInsets.all(7),
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              shrinkWrap: true,
              children: [
                ContainerSmallImageWidget(
                    imgURL: 'assets/imgt.jpg', text: 'Computer science'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
