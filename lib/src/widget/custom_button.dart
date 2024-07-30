import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? color; // 배경색을 위한 속성 추가

  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.orange,
        minimumSize: Size(500, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        textStyle: TextStyle(
          fontSize: 20,
        ),
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed ?? () {}, // 기본값을 빈 함수로 설정
      child: Text(label),
    );
  }
}
