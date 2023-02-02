import 'dart:async';
import 'package:flutter/material.dart';

import '../controllers/fb_auth_controller.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  late StreamSubscription _streamSubscription;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      _streamSubscription = FbAuthController().checkUserState(
        listener: ({required bool status}) {
          String route = status ? '/home_screen' : '/login_screen';
          Navigator.pushReplacementNamed(context, route);
        },
      );
    });
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/img_3.png'),
    );
  }
}
