import 'package:final_project_flutter/screens/app/setting_screen.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Settings(),
              )),
          color: Colors.black,
        ),
        title: const Text(
          'Change Password',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFF19DBA),
        //FFE7789E
        centerTitle: true,
      ),
      //_______________________________________________________________________________
      body: Column(children: <Widget>[
        const SizedBox(
          height: 30,
          width: 100,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '''Enter your New Password below. ''',
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 24,
            ),
          ),
        ]),
        //_______________________________________________________________________________
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width - 70,
        ),
        SizedBox(
          height: 60,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide:
                    BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
              ),
              hintText: 'Current Password',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            style: const TextStyle(
             fontWeight: FontWeight.bold),
          ),
        ),
        //_______________________________________________________________________________

        SizedBox(
          height: 5,
          width: MediaQuery.of(context).size.width - 70,
        ),
        SizedBox(
          height: 60,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide:
                    BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
              ),
              hintText: 'New Password',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            style: const TextStyle(
                fontWeight: FontWeight.bold),
          ),
        ),
        //_______________________________________________________________________________

        SizedBox(
          height: 5,
          width: MediaQuery.of(context).size.width - 70,
        ),
        SizedBox(
          height: 60,
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide:
                    BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
              ),
              hintText: 'Confirm New Password',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            style: const TextStyle(
            fontWeight: FontWeight.bold),
          ),
        ),
        //_______________________________________________________________________________
        const SizedBox(
          height: 15,
          width: 100,
        ),
        Container(
          width: 350,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0XFFF19DBA),
            //borderRadius: BorderRadius.circular(24),
          ),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: const Color(0XFFF19DBA),
            ),
            child: const Text(
              'SAVE',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
