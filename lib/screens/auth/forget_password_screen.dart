import 'package:final_project_flutter/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 770,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img_4.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/graphic-forgot.png',
                height: 250,
                width: 250,
              ),
              //_______________________________________________________________________________
              const SizedBox(
                height: 15,
                width: 100,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Text(
                  "Forgot your Password? ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ]),
              //_______________________________________________________________________________
              const SizedBox(
                height: 15,
                width: 100,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Entered your registered Email address \nbelow to receive your password reset ",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.9),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              //_______________________________________________________________________________
              SizedBox(
                height: 14,
                width: MediaQuery.of(context).size.width - 70,
              ),
              SizedBox(
                height: 60,
                width: 350,
                child: TextField(
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
              ),
              //_______________________________________________________________________________
              const SizedBox(
                height: 7,
                width: 100,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFF19DBA),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) =>  Home(),));
                  },
                  style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                    // primary: Colors.black,
                    backgroundColor: const Color(0XFFF19DBA),
                  ),
                  child: const Text(
                    'SEND',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //_______________________________________________________________________________
              const SizedBox(
                height: 50,
                width: 100,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  " Remember Password? ",
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
                        color: Color(0xFFC68418), fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
              //_______________________________________________________________________________
            ],
          ),
        ),
      ),
    );
  }
}
