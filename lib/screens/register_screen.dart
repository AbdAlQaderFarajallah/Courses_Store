import 'package:final_project_flutter/screens/home_screen.dart';
import 'package:final_project_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController? fname;
  TextEditingController? lname;
  TextEditingController? email;
  TextEditingController? password;

  @override
  void initState() {
    super.initState();
    fname = TextEditingController();
    lname = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Image.asset(
                      'assets/logo.png',
                      height: 250,
                      width: 250,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a First Name ';
                        }
                      },
                      controller: fname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.2), width: 1),
                        ),
                        hintText: 'First Name',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: const Icon(Icons.person),
                      ),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a last Name ';
                        }
                      },
                      controller: lname,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2), width: 1),
                          ),
                          hintText: 'Last Name',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          prefixIcon: const Icon(Icons.person)),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter an Email ';
                        }
                      },
                      controller: email,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a Password ';
                        } else if (value.length < 8) {
                          return 'Enter a Valid Password ';
                        }
                      },
                      controller: password,
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
                    const SizedBox(height: 20),
                    Container(
                      width: 350,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFF19DBA),
                        //borderRadius: BorderRadius.circular(24),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (globalKey.currentState!.validate()) {
                            // Future uid = AuthHelper.authHelper.register(
                            //   fname!.text,
                            //   lname!.text,
                            //   email!.text,
                            //   password!.text,
                            // );
                            // if (uid == null) {
                            //   print("error");
                            // } else {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const Home(),
                            //     ),
                            //   );
                            // }
                          }
                        },
                        style: TextButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0XFFF19DBA),
                        ),
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Already have an account?",
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
                                builder: (context) => const Login(),
                              ));
                        },
                        child: const Text(
                          'Login Now!',
                          style: TextStyle(
                              color: Color(0xFFC68418),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    //_______________________________________________________________________________
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
