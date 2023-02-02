import 'package:final_project_flutter/screens/app/add_course_screen.dart';
import 'package:final_project_flutter/screens/app/cart_product_screen.dart';
import 'package:final_project_flutter/screens/app/cart_screen.dart';
import 'package:final_project_flutter/screens/app/course_details_screen.dart';
import 'package:final_project_flutter/screens/app/courses_screen.dart';
import 'package:final_project_flutter/screens/app/my_profile_screen.dart';
import 'package:final_project_flutter/screens/app/product_details_screen.dart';
import 'package:final_project_flutter/screens/app/products_screen.dart';
import 'package:final_project_flutter/screens/app/setting_screen.dart';
import 'package:final_project_flutter/screens/auth/register_screen.dart';
import 'package:final_project_flutter/screens/auth/change_password_screen.dart';
import 'package:final_project_flutter/screens/auth/forget_password_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'screens/app/home_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/launch_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      initialRoute: '/courses_screen',
      routes: {
        '/home_screen': (context) => const Home(),
        '/launch_screen': (context) => const LaunchScreen(),
        '/add_courses_screen': (context) => AddCourses(),
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
