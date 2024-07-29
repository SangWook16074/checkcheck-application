import 'package:checkcheck_project/src/page/class_onboarding.dart';
import 'package:checkcheck_project/src/page/manage_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/page/main_page.dart'; // MainPage import

class ProfessorCheckOnboarding extends StatelessWidget {
  const ProfessorCheckOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ManageOnboarding()));
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _top(),
              _middle(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  child: Text(
                    '건너뛰기',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/image/Layer_1.png', // 로고 이미지 경로
                height: 50, // 로고 높이
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _top() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Text(
          '언제든지 쉽고 간편하게\n출석 체크 시작',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget _middle() => Container(
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: Color(0xFF383838),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/image/Layer_1 (4).png',
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '출석 인정 시간     09:00 ~ 09:10',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '출석 체크하기',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );
}
