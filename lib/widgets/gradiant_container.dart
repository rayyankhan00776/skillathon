import 'package:flutter/material.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: ScreenWidth,
      height: ScreenHeight,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.teal,
          Colors.teal.shade300,
          Colors.teal.shade400,
          Colors.teal.shade500,
          Colors.white,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Image.asset(
        "images/bgimage.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
