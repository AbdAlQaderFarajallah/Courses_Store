import 'package:final_project_flutter/helpers/helpers.dart';
import 'package:final_project_flutter/models/course.dart';
import 'package:flutter/material.dart';

import '../../controllers/fb_firestore_controller.dart';

class AddCourses extends StatefulWidget {
  AddCourses({
    required this.name,
    required this.teacher,
    required this.course,
  });

  final String teacher;
  final String course;
  final String name;

  @override
  State<AddCourses> createState() => _AddCoursesState();
}

class _AddCoursesState extends State<AddCourses> with Helpers {
  late TextEditingController _teacherEditingController;

  late TextEditingController _numberOfLessonEditingController;

  late TextEditingController _nameOfCourseEditingController;

  @override
  void initState() {
    _teacherEditingController = TextEditingController();
    _numberOfLessonEditingController = TextEditingController();
    _nameOfCourseEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _teacherEditingController.dispose();
    _numberOfLessonEditingController.dispose();
    _nameOfCourseEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              controller: _teacherEditingController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'teacher',
                labelText: 'teacher',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_add_alt_1_outlined),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _nameOfCourseEditingController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'name of course',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.drive_file_rename_outline),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _numberOfLessonEditingController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'number of lessons',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers_sharp),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                await performProcess();
              },
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: const Color(0XFFF19DBA),
              ),
              child: const Text(
                '     Add Course     ',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

//*****************************************************************************************************
  Future<void> performProcess() async {
    if (checkData()) {
      await process();
    }
  }

  bool checkData() {
    if (_teacherEditingController.text.isNotEmpty &&
        _numberOfLessonEditingController.text.isNotEmpty &&
        _nameOfCourseEditingController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context: context, message: 'Enter required data', error: true);
    return false;
  }

  Future<void> process() async {
    await FbFireStoreController().create(course: course);
  }

  Course get course {
    Course course = Course();
    course.courseName = _nameOfCourseEditingController.text;
    course.numberOfLessons = _numberOfLessonEditingController.text;
    course.teacherName = _teacherEditingController.text;
    return course;
  }
}
