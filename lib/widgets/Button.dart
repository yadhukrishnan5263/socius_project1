import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final double height;
  final double width;

  const Button(
      {super.key,
      required this.title,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/icons/button.png"), fit: BoxFit.fill)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
      )),
    );
  }
}
