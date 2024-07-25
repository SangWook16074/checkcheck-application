import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';

class LectureEditPage extends StatefulWidget {
  const LectureEditPage({super.key});

  @override
  _LectureEditPageState createState() => _LectureEditPageState();
}

class _LectureEditPageState extends State<LectureEditPage> {
  final TextEditingController _lectureNameController = TextEditingController();
  final TextEditingController _instructorNameController =
      TextEditingController();
  final TextEditingController _lecturePeriodController =
      TextEditingController();
  final TextEditingController _lectureTimeController = TextEditingController();
  final TextEditingController _enrollmentPeriodController =
      TextEditingController();
  final TextEditingController _lectureInfoController = TextEditingController();

  @override
  void dispose() {
    _lectureNameController.dispose();
    _instructorNameController.dispose();
    _lecturePeriodController.dispose();
    _lectureTimeController.dispose();
    _enrollmentPeriodController.dispose();
    _lectureInfoController.dispose();
    super.dispose();
  }

  Future<void> _selectLecturePeriod() async {
    // 강의 기간 선택 로직 추가
  }

  Future<void> _selectLectureTime() async {
    // 강의 시간 선택 로직 추가
  }

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
              _buildLecturePeriodField(),
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
              _buildElevatedButton(),
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
        '            강의 수정',
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
      backgroundColor: Colors.black,
      titleSpacing: 0,
    );
  }

  CustomTextField _buildLectureNameField() {
    return CustomTextField(
      controller: _lectureNameController,
      hintText: '강의명',
    );
  }

  CustomTextField _buildInstructorNameField() {
    return CustomTextField(
      controller: _instructorNameController,
      hintText: '강의자명',
    );
  }

  CustomTextField _buildLecturePeriodField() {
    return CustomTextField(
      controller: _lecturePeriodController,
      hintText: '강의기간                 00.00.00 ~ 00.00.00',
    );
  }

  CustomTextField _buildLectureTimeField() {
    return CustomTextField(
      controller: _lectureTimeController,
      hintText: '강의시간                            00:00 ~ 00:00',
    );
  }

  CustomTextField _buildEnrollmentPeriodField() {
    return CustomTextField(
      controller: _enrollmentPeriodController,
      hintText: '수강신청기간',
    );
  }

  CustomTextField _buildLectureInfoField() {
    return CustomTextField(
      controller: _lectureInfoController,
      hintText: '강의 정보',
      maxLines: 5,
    );
  }

  Widget _buildElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      onPressed: () {
        // Navigator.push(
        //   context,
        //   // MaterialPageRoute(
        //   //   // builder: (context) => LectureListingsPage(),
        //   // ),
        // );
      },
      child: const Text('수정하기'),
    );
  }
}
