import 'package:final_project_flutter/screens/auth/forget_password_screen.dart';
import 'package:flutter/material.dart';

import '../../controllers/fb_auth_controller.dart';
import 'register_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: 770,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_4.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Form(
              key: globalKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Image.asset(
                      'assets/logo.png',
                      height: 200,
                      width: 250,
                    ),
                    TextFormField(
                      controller: _emailTextController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter an Email ';
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.2), width: 1),
                        ),
                        hintText: 'Email Address',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: const Icon(Icons.email),
                      ),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordTextController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a Password ';
                        } else if (value.length < 8) {
                          return 'Enter a valid Password ';
                        }
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2), width: 1),
                          ),
                          hintText: 'Password',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          prefixIcon: const Icon(Icons.lock)),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgetPassword(),
                                ));
                          },
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                                color: Color(0xFFC68418),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5, width: 100),
                    Container(
                      width: 350,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFF19DBA),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          await login();
                        },
                        style: TextButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0XFFF19DBA),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ),
                            );
                          },
                          child: const Text(
                            'Register Now',
                            style: TextStyle(
                                color: Color(0xFFC68418),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Future<void> login() async {
    bool status = await FbAuthController().signIn(
        context: context,
        email: _emailTextController.text,
        password: _passwordTextController.text);
    if (status) {
      Navigator.pushReplacementNamed(context, '/home_screen');
    }
  }
}
