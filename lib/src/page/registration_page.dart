import 'package:checkcheck_project/src/page/class_list.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_scrollbar.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class registation extends StatelessWidget {
  const registation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => classList()));
        }),
        title: const Text('수강신청', style: TextStyle(fontSize: 25))),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: CustomScrollbar(child: SingleChildScrollView(
        child: Column(children: [
          CustomTextField(
            hintText: '검색하기',
            suffixIcon: Icon(Icons.search),
          ),
          SizedBox(height: 25),

          CustomButton(label: "수강 신청 요청 취소", onPressed: () {}),
        ],),
      )),),
    );
  }
}