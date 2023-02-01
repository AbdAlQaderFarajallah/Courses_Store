import 'package:flutter/material.dart';

class AddCourses extends StatefulWidget {
  const AddCourses({super.key});

  @override
  State<AddCourses> createState() => _AddCoursesState();
}

class _AddCoursesState extends State<AddCourses> {
  late String teacher;
  late String course;
  late String name;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: globalKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'enter a teacher ';
                } else if (value.length < 8) {
                  return 'enter a valid teacher ';
                }
              },
              onChanged: (value) {
                teacher = value;
              },
              decoration: const InputDecoration(
                hintText: 'teacher',
                labelText: 'teacher',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'enter a course ';
                } else if (value.length < 8) {
                  return 'enter a valid course ';
                }
              },
              onChanged: (value) {
                course = value;
              },
              decoration: const InputDecoration(
                hintText: 'course',
                labelText: 'course',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'enter a name ';
                } else if (value.length < 8) {
                  return 'enter a valid name ';
                }
              },
              onChanged: (value) {
                name = value;
              },
              decoration: const InputDecoration(
                hintText: 'name',
                labelText: 'name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // AuthHelper.authHelper.addCourse(
                //   Courses(name: name, id: course, teacher: teacher),
                // );
              },
              child: const Text('add course'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
