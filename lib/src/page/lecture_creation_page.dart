import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:checkcheck_project/src/widget/custom_elevated_button.dart';

class LectureCreationPage extends StatelessWidget {
  const LectureCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildLectureNameField(),
              const SizedBox(height: 20),
              _buildInstructorNameField(),
              const SizedBox(height: 20),
              _buildLectureTimeField(),
              const SizedBox(height: 20),
              _buildEnrollmentPeriodField(),
              const SizedBox(height: 20),
              _buildLectureInfoField(),
              const SizedBox(height: 20),
              const Text(
                'tip. 입력하신 강의정보는 언제든지 바꿀 수 있어요',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              CustomElevatedButton()
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.pop(context); // 이전 페이지로 돌아가기
        },
      ),
      title: const Text(
        '강의 개설',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      backgroundColor: Colors.black,
      titleSpacing: 0,
    );
  }

  CustomTextField _buildLectureNameField() {
    return const CustomTextField(
      hintText: '강의명',
    );
  }

  CustomTextField _buildInstructorNameField() {
    return const CustomTextField(
      hintText: '강사명',
    );
  }

  CustomTextField _buildLectureTimeField() {
    return const CustomTextField(
      hintText: '강의시간',
      suffixIcon: Icon(Icons.access_time, color: Colors.grey),
    );
  }

  CustomTextField _buildEnrollmentPeriodField() {
    return const CustomTextField(
      hintText: '수강신청기간',
    );
  }

  CustomTextField _buildLectureInfoField() {
    return const CustomTextField(
      hintText: '강의 정보',
      maxLines: 5,
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