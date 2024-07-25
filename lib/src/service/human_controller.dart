import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'human.dart';
import 'human_repository.dart';

class HumanController extends GetxController {
  final HumanRepository humanRepository = HumanRepository();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();

  Future<void> signUp() async {
    final email = emailController.text;
    final password = passwordController.text;
    final name = nameController.text;

    if (password != confirmPasswordController.text) {
      Get.snackbar('Error', 'Passwords do not match');
      return;
    }

    try {
      final human = await humanRepository.signUp(email, password, name);
      Get.snackbar('Success', 'Signed up as ${human.name}');
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign up: $e');
    }
  }
}
