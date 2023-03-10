import 'package:flutter/material.dart';

import '../screens/app/course_details_screen.dart';


class MyCourseCard extends StatelessWidget {
  MyCourseCard({
    required this.imgURL,
    required this.lessonsCount,
    required this.startTime,
    required this.titleText,
  });

  String imgURL;
  String titleText;
  String startTime;
  String lessonsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          elevation: 5,
          child: ListTile(
            leading: Image.asset(
              imgURL,
              fit: BoxFit.cover,
              height: 200,
              width: 150,
            ),
            title: Text(
              titleText,
              style:
                  const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CourseDetail(),
                  ));
            },
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        " Start on : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                      Text(
                        startTime,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  lessonsCount,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
