import 'package:flutter/material.dart';

class ContainerImageWidget extends StatelessWidget {
  ContainerImageWidget({
    required this.imgURL,
    required this.text,
  });

  String imgURL;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 15),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width - 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(0, 10),
                blurRadius: 5.0,
                spreadRadius: 0)
          ],
          image: DecorationImage(
            image: AssetImage(imgURL),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 150),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
