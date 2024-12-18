import 'package:flutter/material.dart';
import 'dart:async';

import 'package:skillathon_app/screens/signupscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignupScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset("images/cusit.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Skillathon",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontFamily: "fontheading",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
