import 'package:checkcheck_project/src/page/sign_up_page.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _logo(),
              SizedBox(height: 30),
              CustomTextField(
                hintText: "이메일",
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "비밀번호",
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomButton(
                label: "로그인",
                onPressed: () {},
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  Widget _logo() => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          'assets/image/Layer_1.png',
          height: 80,
          fit: BoxFit.contain,
        ),
      );
}
