import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(),
              SizedBox(height: 20), 

              CustomTextField(),
              SizedBox(height: 20), 

              CustomButton(label: "로그인", onPressed: () {},),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Text('회원가입',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,),
                ),),
            ]),
      ),
    );
  }
}