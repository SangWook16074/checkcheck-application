import 'package:flutter/material.dart';

class Tip extends StatelessWidget {
  const Tip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'tip. 초성 검색도 가능해요 ex) ㅁㄹㅎ > 물리학',
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.left,
              ),);
  }
  }