import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _signup() async {
    // API 요청을 통해 회원가입 처리
  }

  Future<void> _checkDuplicateEmail() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.orange, size: 60),
              const SizedBox(height: 16),
              const Text(
                '사용 가능한 이메일입니다!\n회원가입을 마저 진행해주세요',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('확인', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
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
                    controller: _emailController,
                    hintText: "아이디(이메일)",
                  ),
                  Positioned(
                    right: 10,
                    top: 10, // 이 값을 조정하여 위치를 변경합니다.
                    bottom: 10, // 이 값을 추가하여 위치를 변경합니다.
                    child: SizedBox(
                      height: 36, // 높이 조정
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8.0), // 가로 여백 조정
                          textStyle: TextStyle(fontSize: 14), // 텍스트 크기 조정
                        ),
                        onPressed: _checkDuplicateEmail,
                        child: Center(
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
                controller: _passwordController,
                hintText: "비밀번호",
                obscureText: true,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _confirmPasswordController,
                hintText: "비밀번호 확인",
                obscureText: true,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _nameController,
                hintText: "이름",
                suffixIcon: Icon(Icons.check_circle, color: Colors.orange),
              ),
              const SizedBox(height: 40),
              CustomButton(
                label: "시작하기",
                onPressed: _signup,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
