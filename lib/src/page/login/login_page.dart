import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/page/login/sign_up_page.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    // API 요청을 통해 로그인 처리
  }

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
            CustomTextField(
              controller: _emailController,
              hintText: "이메일",
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: _passwordController,
              hintText: "비밀번호",
              obscureText: true,
            ),
            const SizedBox(height: 20),
            CustomButton(
              label: "로그인",
              onPressed: _login,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupPage()));
              },
              child: const Text(
                '회원가입',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
