import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  const CustomTextField({super.key, this.controller, this.hintText = "", this.obscureText= false, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText!,
                decoration:
                    InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)), 
                      hintText: hintText,
                      suffixIcon: suffixIcon,
                      ),
              );
  }
}