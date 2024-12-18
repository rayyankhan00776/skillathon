import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hinttext;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.white,
              width: 1,
            )),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefix: Icon(
            Icons.person,
            color: Colors.white,
          ),
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.white),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        ),
        validator: validator,
      ),
    );
  }
}
