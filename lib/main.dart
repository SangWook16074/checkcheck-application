import 'package:checkcheck_project/src/app.dart';
import 'package:checkcheck_project/src/page/attendance_check.dart';
import 'package:checkcheck_project/src/page/attendance_list.dart';
import 'package:checkcheck_project/src/page/class_list.dart';
import 'package:checkcheck_project/src/page/class_onboarding.dart';
import 'package:checkcheck_project/src/page/login_page.dart';
import 'package:checkcheck_project/src/page/role_choose.dart';
import 'package:checkcheck_project/src/page/check_onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AttendanceList(),
    );
  }
}
