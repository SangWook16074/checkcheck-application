import 'package:checkcheck_project/src/page/attendance_management_page.dart';
import 'package:checkcheck_project/src/page/professor/attendance_page.dart';
import 'package:checkcheck_project/src/page/auth/home_page.dart';
import 'package:checkcheck_project/src/page/professor/lecture_listings_delete_page.dart';
import 'package:checkcheck_project/src/page/professor/lecture_listings_page.dart';
import 'package:checkcheck_project/src/page/professor/lecture_creation_page.dart';
import 'package:checkcheck_project/src/page/login/login_page.dart';
import 'package:checkcheck_project/src/page/mainpage_edit_page.dart';
import 'package:checkcheck_project/src/page/login/sign_up_page.dart';
import 'package:checkcheck_project/src/page/professor/lecture_edit_page.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AttendanceManagementPage(),
    );
  }
}
