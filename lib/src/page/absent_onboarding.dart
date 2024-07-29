import 'package:checkcheck_project/src/page/main_page.dart';
import 'package:flutter/material.dart';

class AbsentOnboarding extends StatelessWidget {
  const AbsentOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainPage()));
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _top(),
              _text(),
              SizedBox(height: 20),
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
        '이 학생 몇 번 결석이더라?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      );

  Widget _text() => Text(
        '누적 출결 관리로 빠르고 간편한 확인',
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '전체 출석을 한 번에 관리하세요',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _attendanceRow('민진수', '3'),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  _attendanceRow('이하니', '2/3'),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  _attendanceRow('최현희', '00'),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _attendanceRow(String name, String attendanceText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    attendanceText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
