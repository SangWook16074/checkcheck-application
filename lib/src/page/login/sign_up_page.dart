import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../service/human_controller.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';

class SignupPage extends GetView<HumanController> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Text(
                    "회원가입",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 60.0),
                ],
              ),
              Stack(
                children: [
                  CustomTextField(
                    controller: controller.emailController,
                    hintText: "아이디(이메일)",
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    bottom: 10,
                    child: SizedBox(
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          textStyle: const TextStyle(fontSize: 12),
                        ),
                        onPressed: controller.signUp,
                        child: const Center(
                          child: Text(
                            '중복 확인',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller.passwordController,
                hintText: "비밀번호",
                obscureText: true,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller.confirmPasswordController,
                hintText: "비밀번호 확인",
                obscureText: true,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller.nameController,
                hintText: "이름",
                suffixIcon:
                    const Icon(Icons.check_circle, color: Colors.orange),
              ),
              const SizedBox(height: 40),
              CustomButton(
                label: "시작하기",
                onPressed: controller.signUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
