import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  Color _buttonColor = Colors.grey;

  void _changeColor() {
    setState(() {
      _buttonColor = Colors.orange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: _buttonColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
      onPressed: _changeColor,
      child: Text('출석체크'), /// 이 부분은 출석체크 글자가 아닌 사용할 때마다 자신이 입력할 수 있게 수정이 필요.
    );
  }
}
