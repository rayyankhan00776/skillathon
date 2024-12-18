import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skillathon_app/screens/login_page.dart';
import 'package:skillathon_app/widgets/button.dart';
import 'package:skillathon_app/widgets/gradiant_container.dart';
import 'package:skillathon_app/widgets/textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            const GradiantContainer(),
            Container(
              margin: EdgeInsets.only(top: 150, left: 35),
              width: 320,
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "SIGN-IN  HERE",
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
                      height: 30,
                    ),
                    CustomTextField(
                      labelText: 'Name',
                      hinttext: "Enter Your Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      controller: _nameController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hinttext: "Enter Your Number",
                      labelText: 'Nmmber',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Number';
                        }
                        return null;
                      },
                      controller: _mobileController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      labelText: 'email address',
                      hinttext: "Enter your email address",
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
                      hinttext: "Enter your password",
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
                                  builder: (context) => LoginScreen()));
                        },
                        child: CustomButton(
                          text: 'Sign UP',
                        )),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    if (_formKey.currentState!.validate()) {
      // Save user data
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('name', _nameController.text);
      await prefs.setString('email', _emailController.text);
      await prefs.setString('password', _passwordController.text);
      await prefs.setString('mobile', _mobileController.text);

      // Navigate to login screen
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }
}
