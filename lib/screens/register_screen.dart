import 'package:flutter/material.dart';
import 'package:skillathon_app/widgets/gradiant_container.dart';
import 'package:skillathon_app/widgets/textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _courseController = TextEditingController();
  final _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "REGISTER HERE",
          style: TextStyle(
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          const GradiantContainer(),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                height: 550,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Text(
                      "Fill the Form",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "heading2",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                      labelText: 'email address',
                      hinttext: "Enter Your email address",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      labelText: 'Enter you Number',
                      hinttext: "Enter Your Number",
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
                      labelText: 'please ENter the course you want',
                      hinttext: "App . Web , AI , Graphics",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      controller: _courseController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
