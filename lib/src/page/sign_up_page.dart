import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                children: <Widget>[
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
              Column(
                children: <Widget>[
                  CustomTextField(
                    hintText: "아이디(이메일)",
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    hintText: "비밀번호",
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    hintText: "비밀번호 확인",
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    hintText: "이름",
                  ),
                ],
              ),
              SizedBox(height: 40),
              CustomButton(
                label: "시작하기",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}