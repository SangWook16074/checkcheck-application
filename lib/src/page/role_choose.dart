import 'package:checkcheck_project/src/page/professor_check_onboarding.dart';
import 'package:checkcheck_project/src/page/check_onboarding.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:flutter/material.dart';

class RoleChoose extends StatefulWidget {
  const RoleChoose({super.key});

  @override
  _RoleChooseState createState() => _RoleChooseState();
}

class _RoleChooseState extends State<RoleChoose> {
  Color _defaultColor = Color(0xFF656565);
  Color _pressedColor = Colors.orange;
  Color _buttonColor1 = Color(0xFF656565);
  Color _buttonColor2 = Color(0xFF656565);

  bool _isStudentSelected = false;
  bool _isProfessorSelected = false;

  void _toggleButtonColor1() {
    // 기본 색상일 때 오렌지로 변경, 오렌지일 때 기본으로 변경.
    setState(() {
      _buttonColor1 =
          _buttonColor1 == _defaultColor ? _pressedColor : _defaultColor;
      _isStudentSelected = _buttonColor1 == _pressedColor;
      _isProfessorSelected = false; // 첫 번째 버튼이 오렌지가 되면 학생이 클릭됨으로 인식.
    });
  }

  void _toggleButtonColor2() {
    setState(() {
      _buttonColor2 =
          _buttonColor2 == _defaultColor ? _pressedColor : _defaultColor;
      _isProfessorSelected = _buttonColor2 == _pressedColor;
      _isStudentSelected = false; // 두 번째 버튼 클릭시 학생이 선택되지 않음으로 인식.
    });
  }

  void _start() {
    if (_isStudentSelected) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CheckOnboarding()),
      );
    }
    if (_isProfessorSelected) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfessorCheckOnboarding()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _Top(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Student(),
                _Professor(),
              ],
            ),
            _Tip(),
            _Buttom(),
          ]),
    );
  }

  Widget _Top() => Text(
        '새로운 수업을 듣게 될\n 학생이신가요?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center, // 텍스트를 가운데 정렬
      );

  Widget _Tip() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          'tip. 과제를 깜빡하면 첵췍이 알려드릴게요!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );

  Widget _Buttom() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          label: '시작하기',
          onPressed: _start,
        ),
      );

  Widget _Student() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: 243,
          width: 163,
          child: ElevatedButton(
            onPressed: _toggleButtonColor1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'assets/image/Layer_1 (1).png',
                    height: 80,
                  ),
                ),
                Text(
                  '학생',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '지금 바로 간편한\n출석 체크를 시작해 보세요',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: _buttonColor1,

              /// 버튼 배경색
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
      );

  Widget _Professor() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: 243,
          width: 163,
          child: ElevatedButton(
            onPressed: _toggleButtonColor2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'assets/image/Layer_1 (2).png',
                    height: 80,
                  ),
                ),
                Text(
                  '강의자',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '쉽고 간편하게 출석 체크를\n시작하고 관리하세요!',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: _buttonColor2, // 버튼 배경색
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
      );
}
