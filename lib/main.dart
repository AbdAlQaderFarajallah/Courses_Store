import 'package:final_project_flutter/screens/add_course_screen.dart';
import 'package:final_project_flutter/screens/cart_product_screen.dart';
import 'package:final_project_flutter/screens/cart_screen.dart';
import 'package:final_project_flutter/screens/change_password_screen.dart';
import 'package:final_project_flutter/screens/course_details_screen.dart';
import 'package:final_project_flutter/screens/courses_screen.dart';
import 'package:final_project_flutter/screens/forget_password_screen.dart';
import 'package:final_project_flutter/screens/home_screen.dart';
import 'package:final_project_flutter/screens/my_profile_screen.dart';
import 'package:final_project_flutter/screens/product_details_screen.dart';
import 'package:final_project_flutter/screens/products_screen.dart';
import 'package:final_project_flutter/screens/register_screen.dart';
import 'package:final_project_flutter/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/cartProduct_screen',
      routes: {
        '/home_screen': (context) => const Home(),
        '/add_courses_screen': (context) => const AddCourses(),
        '/courses_screen': (context) => const Courses(),
        '/products_screen': (context) => const Products(),
        '/cart_screen': (context) => const Cart(),
        '/myProfile_screen': (context) => const MyProfile(),
        '/settings_screen': (context) => const Settings(),
        '/login_screen': (context) => const Login(),
        '/cartProduct_screen': (context) => const CartProduct(),
        '/changePassword_screen': (context) => const ChangePassword(),
        '/courseDetail_screen': (context) => const CourseDetail(),
        '/forgetPassword_screen': (context) => const ForgetPassword(),
        '/productDetail_screen': (context) => const ProductDetail(),
        '/register_screen': (context) => const Register(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

// class App extends StatelessWidget {
//   const App({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Home();
//     // return FutureBuilder(
//     //   // future: Firebase.initializeApp(),
//     //   builder: (context, snapshot) {
//     //     // Check for errors
//     //     if (snapshot.hasError) {
//     //       return Scaffold(
//     //         appBar: AppBar(
//     //             title: const Text(
//     //           'something wrong',
//     //         )),
//     //       );
//     //     }
//     //     // Once complete, show your application
//     //     if (snapshot.connectionState == ConnectionState.done) {
//     //       return const AddCourses();
//     //     }
//     //     // Otherwise, show something whilst waiting for initialization to complete
//     //     return const Scaffold(
//     //       body: Center(
//     //         child: Text('loading'),
//     //       ),
//     //     );
//     //   },
//     // );
//   }
// }
