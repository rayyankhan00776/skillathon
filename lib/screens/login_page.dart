import 'package:flutter/material.dart';
import 'package:skillathon_app/screens/DashboardScreen.dart';
import 'package:skillathon_app/widgets/button.dart';
import 'package:skillathon_app/widgets/gradiant_container.dart';
import 'package:skillathon_app/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradiantContainer(),
          Container(
            margin: EdgeInsets.only(top: 200, left: 25),
            width: 340,
            height: 600,
            decoration: BoxDecoration(
              // blue container
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "LOGIN  HERE",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 2,
                      fontFamily: "heading2",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 70,
                ),
                CustomTextField(
                  labelText: 'email address',
                  hinttext: "Enter Your email address",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  labelText: 'Enter Password ',
                  hinttext: "Rnter your password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: _passwordController,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dashboardscreen()));
                    },
                    child: CustomButton(
                      text: 'Login',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
