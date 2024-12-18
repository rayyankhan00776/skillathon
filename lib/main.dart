import 'package:flutter/material.dart';
import 'package:skillathon_app/screens/SplashScreen.dart';

void main() {
  runApp(const skillathon());
}

class skillathon extends StatefulWidget {
  const skillathon({super.key});

  @override
  State<skillathon> createState() => _skillathonState();
}

class _skillathonState extends State<skillathon> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skillathon',
      home: const Splashscreen(),
    );
  }
}
