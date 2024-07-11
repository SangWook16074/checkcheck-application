import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:checkcheck_project/src/widget/custom_elevated_botton.dart';

class LectureCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // 이전 페이지로 돌아가기
          },
        ),
        title: Text(
          '강의 개설',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                hintText: '강의명',
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: '강사명',
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: '강의시간',
                suffixIcon: Icon(Icons.access_time, color: Colors.grey),
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: '수강신청기간',
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: '강의 정보',
                maxLines: 5,
              ),
              SizedBox(height: 20),
              Text(
                'tip. 입력하신 강의정보는 언제든지 바꿀 수 있어요',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              CustomElevatedButton()
            ],
          ),
        ),
      ),
    );
  }
}


// 강의시간 옆에 눌러서 시간선택하려면 타임피커 사용해야하는건가요?



  // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.orange,
              //     foregroundColor: Colors.white,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20.0),
              //     ),
              //   ),
              //   onPressed: () {
              //     // 개설하기 버튼 눌렀을 때의 동작 정의하기
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 16.0),
              //     child: Text(
              //       '개설하기',
              //       style: TextStyle(fontSize: 18),
              //     ),
              //   ),
              // ),