import 'package:checkcheck_project/src/app.dart';
import 'package:checkcheck_project/src/service/init_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const App(),
      initialBinding: InitBinding(),
    );
  }
}
