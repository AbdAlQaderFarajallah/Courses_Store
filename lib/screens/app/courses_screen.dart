import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project_flutter/controllers/fb_firestore_controller.dart';
import 'package:final_project_flutter/widgets/drawar_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/course_card.dart';
import '../../widgets/myCourse_card.dart';

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
      drawer: const DrawarWidget(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: SingleChildScrollView(
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
                        top: BorderSide(color: Colors.white, width: 0.5),
                      ),
                    ),
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FbFireStoreController().read(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              } else if (snapshot.hasData &&
                                  snapshot.data!.docs.isNotEmpty) {
                                List<QueryDocumentSnapshot> documents =
                                    snapshot.data!.docs;
                                return ListView.builder(
                                  itemCount: documents.length,
                                  itemBuilder: (context, index) {
                                    return CourseCard(
                                        imgURL: 'assets/imglist1.jpg',
                                        lessonsCount:
                                            '${documents[index].get('numberOfLessons')}',
                                        name:
                                            '${documents[index].get('teacherName')}',
                                        titleText:
                                            '${documents[index].get('courseName')}'
                                                .toString());
                                  },
                                );
                              } else {
                                return Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.warning,
                                        size: 85,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'NO DATA',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }
                            },
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
          ),
        ],
      ),
    );
  }
}
