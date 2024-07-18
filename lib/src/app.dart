import 'package:checkcheck_project/src/page/attendance_page.dart';
import 'package:checkcheck_project/src/page/auth/home_page.dart';
import 'package:checkcheck_project/src/page/lecture_listings_page.dart';
import 'package:checkcheck_project/src/page/lecture_creation_page.dart';
import 'package:checkcheck_project/src/page/login_page.dart';
import 'package:checkcheck_project/src/page/sign_up_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
    );
  }
}
