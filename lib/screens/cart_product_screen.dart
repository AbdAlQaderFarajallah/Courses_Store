import 'package:final_project_flutter/screens/cart_screen.dart';
import 'package:final_project_flutter/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

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
            'Cart Product',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 10,
                ),
                Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/imglist2.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 150,
                      ),
                      title: const Text(
                        " The Earth Ceramic Coffee Mug ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(" 280 KWD ",
                            style: TextStyle(
                                color: Color(0xFFC68418),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                      trailing: SizedBox(
                        height: 70,
                        width: 100,
                        child: Column(
                          children: <Widget>[
                            const Icon((Icons.delete_forever_outlined),
                                size: 15, color: Color(0xFFF19DBA)),
                            SizedBox(
                                width: 100,
                                height: 20,
                                child: Row(children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          (Icons
                                              .indeterminate_check_box_outlined),
                                          size: 15,
                                          color: Colors.grey)),
                                  const Text(" 2 "),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon((Icons.add_box_outlined),
                                          size: 15, color: Colors.grey)),
                                ])),
                          ],
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      " Sub Total : ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                        "                                                                                              "),
                    Text(
                      " 100 KWD ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      " Tax (15%) : ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                        "                                                                                                "),
                    Text(
                      " 15 KWD ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      " Total : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                        "                                                                                                 "),
                    Text(
                      " 215 KWD ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
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
                        ' ADD TO CART ',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
