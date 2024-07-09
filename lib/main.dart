import 'package:checkcheck_project/src/app.dart';
import 'package:checkcheck_project/src/page/attendance_check.dart';
import 'package:checkcheck_project/src/page/class_list.dart';
import 'package:checkcheck_project/src/page/login_page.dart';
import 'package:checkcheck_project/src/page/registration_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: classList(),
    );
  }
}
