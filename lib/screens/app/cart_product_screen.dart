import 'package:final_project_flutter/screens/app/product_details_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetail(),
              )),
          color: Colors.black,
        ),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        //FFE7789E
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Card(
              elevation: 5,
              child: ListTile(
                leading: Image.asset(
                  'assets/imglist2.jpg',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
                title: const Text(
                  " The Earth Ceramic Coffee Mug ",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(" 280 KWD ",
                      style: TextStyle(
                          color: Color(0xFFC68418),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
//******************************************************************************
            const SizedBox(height: 55),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  " Sub Total : ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  " 280 KWD ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  " Tax (15%) : ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  " 35 KWD ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  " Total : ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  " 315 KWD ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Center(
              child: Container(
                width: 350,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFF19DBA),
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Cart(),
                      )),
                  style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0XFFF19DBA),
                  ),
                  child: const Text(
                    ' checkout ',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
