import 'package:final_project_flutter/screens/app/add_course_screen.dart';
import 'package:final_project_flutter/screens/app/home_screen.dart';
import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawar_widget.dart';
import '../../widgets/product_card.dart';
import 'cart_screen.dart';
import 'courses_screen.dart';
import 'my_profile_screen.dart';
import 'setting_screen.dart';

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
      drawer: const DrawarWidget(),
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
