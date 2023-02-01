import 'package:flutter/material.dart';

class ContainerSmallImageWidget extends StatelessWidget {
  ContainerSmallImageWidget({
    required this.imgURL,
    required this.text,
  });

  String imgURL;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7),
      child: Container(
        height: 170,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  offset: const Offset(0, 10),
                  blurRadius: 5.0,
                  spreadRadius: 0)
            ]),
        child: Column(
          children: [
            Image(
              image: AssetImage(imgURL),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
