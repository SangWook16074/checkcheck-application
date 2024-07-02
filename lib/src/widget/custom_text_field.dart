import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  const CustomTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
                decoration:
                    InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)), hintText: '이메일'),
              );
  }
}