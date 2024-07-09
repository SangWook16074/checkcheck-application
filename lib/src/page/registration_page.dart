import 'package:checkcheck_project/src/page/class_list.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_elevated_botton.dart';
import 'package:checkcheck_project/src/widget/custom_scrollbar.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class registation extends StatelessWidget {
  final List<String> registations = List.generate(5, (index) => '강의명');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => classList()));
        }),
        title: const Text('수강신청', style: TextStyle(fontSize: 25, color: Colors.white))),
        backgroundColor: Colors.black,
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: CustomScrollbar(child: SingleChildScrollView(
        child: Column(children: [
          CustomTextField(
            hintText: '검색하기',
            suffixIcon: Icon(Icons.search),
          ),
          SizedBox(height: 25),

              for (var registation in registations)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    hintText: '강의명 / 강사명',
                    hintStyle: TextStyle(color: Colors.white),
                    suffix: CustomElevatedButton()),),
                ),
                  SizedBox(height: 20),
                  // Text('강사명', style: TextStyle(color: Colors.white, fontSize: 10),)
                

          CustomButton(label: "수강 신청 요청 취소", onPressed: () {}),
        ],),
      )),),
    );
  }
}