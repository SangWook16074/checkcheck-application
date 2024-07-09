import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.label, this.onPressed}) : assert(onPressed != null, "반드시 액션 함수를 넣으세요.");

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(500, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  foregroundColor: Colors.white,
                ),
                onPressed: onPressed,
                child: Text(label),
              );
  }
}