import 'package:flutter/material.dart';

import 'courses_screen.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Courses(),
                )),
            color: Colors.black,
          ),
          title: const Text(
            'Course Detail',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFFF19DBA),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Diploma Of Information Technology Networking ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: const [
                  Text(
                    " By ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  Text(
                    " Gillberto S.Osborne",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey),
                  ),
                  Text("                      "),
                  Text(
                    " 36 Reviews ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  Text(
                    " (View All) ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Color(0xFFC68418)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: const [
                  Text(
                    " Start On ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  Text(
                    " 05 Feb 2020 ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey),
                  ),
                  Text("       |       "),
                  Text(
                    " 27 Lessions ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                " 75.00 KWD ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Color(0xFFC68418)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text(" About this Course ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                  "A product can be a service or an item.\nIt can be physical or in virtual or cyber form.\nEvery product is made at a cost and each is sold at a price.\nThe price that can be charged depends on the market, \nthe quality,\n the marketing and the segment that is targeted ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey.withOpacity(0.9))),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(" Courses ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Column(
                children: const [
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Text(
                        " Lesson 01 : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFFC68418)),
                      ),
                      title: Text(
                        "   introduction ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Icon((Icons.play_circle_fill),
                            color: Color(0xFFF19DBA)),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Text(
                        " Lesson 02 : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFFC68418)),
                      ),
                      title: Text(
                        "   Basic intro of online Network ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Icon((Icons.play_circle_fill),
                            color: Color(0xFFF19DBA)),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Text(
                        " Lesson 03 : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xFFC68418)),
                      ),
                      title: Text(
                        "   Information of online Networking ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Icon((Icons.play_circle_fill),
                            color: Color(0xFFF19DBA)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),);
  }
}
