import 'package:final_project_flutter/controllers/fb_auth_controller.dart';
import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late TextEditingController fname;
  late TextEditingController lname;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    super.initState();
    fname = TextEditingController();
    lname = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _emailTextController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.2), width: 1),
                    ),
                    hintText: 'Email Address',
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
                  controller: _passwordTextController,
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
                    onPressed: () async {
                      await register();
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
      ),
    );
  }

  Future<void> register() async {
    bool status = await FbAuthController().createAccount(
        context: context,
        email: _emailTextController.text,
        password: _passwordTextController.text);
    if (status) {
      Navigator.pop(context);
    }
  }
}
