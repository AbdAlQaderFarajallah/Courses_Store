import 'package:flutter/material.dart';

import '../widgets/course_card.dart';
import '../widgets/myCourse_card.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Courses',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        //FFE7789E
        centerTitle: true,
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: const EdgeInsets.all(15),
      //     scrollDirection: Axis.vertical,
      //     controller: ScrollController(),
      //     shrinkWrap: true,
      //     children: <Widget>[
      //       const SizedBox(height: 20),
      //       const CircleAvatar(
      //         radius: 80,
      //         backgroundImage: AssetImage(
      //           'assets/rachelle.jpg',
      //         ),
      //       ),
      //       const SizedBox(height: 30),
      //       const Center(
      //           child: Text(
      //         'Rachelle D.Michael',
      //         style: TextStyle(
      //           fontSize: 25,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       )),
      //       const SizedBox(height: 20),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon((Icons.home), color: Color(0xFFF19DBA)),
      //         title: const Text('Home',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Home(),
      //               ));
      //         },
      //       ),
      //       const SizedBox(height: 20),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon((Icons.home), color: Color(0xFFF19DBA)),
      //         title: const Text('Add Course',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const AddCourses(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon((Icons.collections_bookmark),
      //             color: Color(0xFFF19DBA)),
      //         title: const Text('Course',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Courses(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //       const ListTile(
      //         leading: Icon((Icons.my_library_books), color: Color(0xFFF19DBA)),
      //         title: Text('News',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading:
      //             const Icon((Icons.shopping_bag), color: Color(0xFFF19DBA)),
      //         title: const Text('Products',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Products(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading:
      //             const Icon((Icons.shopping_cart), color: Color(0xFFF19DBA)),
      //         title: const Text('Cart',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Cart(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon((Icons.person_pin), color: Color(0xFFF19DBA)),
      //         title: const Text('My Profile',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const MyProfile(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon((Icons.settings), color: Color(0xFFF19DBA)),
      //         title: const Text('Setting',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Settings(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon((Icons.logout), color: Color(0xFFF19DBA)),
      //         title: const Text('Logout',
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //             )),
      //         onTap: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => const Login(),
      //               ));
      //         },
      //       ),
      //       const Divider(),
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: const TabBar(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    labelColor: Color(0xFFC68418),
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(
                        text: 'All Courses',
                      ),
                      Tab(text: 'My Courses'),
                    ],
                  ),
                ),
                Container(
                  height: 500, //height of TabBarView
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.white, width: 0.5))),
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            CourseCard(
                                imgURL: 'assets/imglist1.jpg',
                                lessonsCount: " 14 Lessons",
                                name: " Betty R.Roberts ",
                                titleText: " Business Management"),
                            CourseCard(
                                imgURL: 'assets/imglist2.jpg',
                                lessonsCount: " 16 Lessons",
                                name: " Juana K.Powell ",
                                titleText: " Project Management"),
                            CourseCard(
                                imgURL: 'assets/imglist3.jpg',
                                lessonsCount: " 27 Lessons",
                                name: " Gilberto S.Osborne ",
                                titleText: " Diploma Of It Networking"),
                            CourseCard(
                                imgURL: 'assets/imglist4.jpg',
                                lessonsCount: " 16 Lessons",
                                name: " Gilberto S.Osborne ",
                                titleText: " Science Fiction, Fact Network"),
                            CourseCard(
                                imgURL: 'assets/imglist5.jpg',
                                lessonsCount: " 14 Lessons",
                                name: " Betty R.Roberts ",
                                titleText: " Business Management"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            MyCourseCard(
                                titleText: " Biology The Scientific Method ",
                                lessonsCount: " 05 of 14 Lessons",
                                imgURL: 'assets/imglist2.jpg',
                                startTime: " 30 Jan 2020 "),
                            MyCourseCard(
                                titleText: " Social Media Marketing ",
                                lessonsCount: " 03 of 16 Lessons",
                                imgURL: 'assets/imglist4.jpg',
                                startTime: " 01 Feb 2020 "),
                            MyCourseCard(
                                titleText: " It Cloud Computing ",
                                lessonsCount: " 11 of 20 Lessons",
                                imgURL: 'assets/imglist6.jpg',
                                startTime: " 03 Feb 2020 "),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
