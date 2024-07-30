import 'package:checkcheck_project/src/page/attendance_onboarding.dart';
import 'package:checkcheck_project/src/page/main_page.dart';
import 'package:flutter/material.dart';

class ClassOnboarding extends StatelessWidget {
  const ClassOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AttendanceOnboarding()));
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _top(),
              _text(),
              SizedBox(
                height: 20,
              ),
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

  Widget _top() => Text(
        '오늘 수업 과제 뭐였지?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      );

  Widget _text() => Text(
        '과제 메모장으로 수업 전 까먹지 않도록',
        style: TextStyle(color: Colors.white, fontSize: 15),
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
            Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xFF343434)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        '시각디자인실습',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.orange),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '-중간고사 과제\n-조별과제진행\n-다음 수업 전까지 주제 선정 및 역할 분담 진행\n-정기 모임 날짜, 시간 정하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFF343434)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '-조별과제: 현장 탐사 필수\n-기간 내에 총 5 회 탐사 필수 및 보고서 5 회 작성',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
