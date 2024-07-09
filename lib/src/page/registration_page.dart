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
          SizedBox(height: 25), ...
          _registration(),
          SizedBox(height: 20,),
          CustomButton(label: "수강 신청 요청 취소", onPressed: () {}),
        ],),
      )),),
    );
  }

  /// 강의명 및 강사명이 보이고 신청하기 버튼을 통해 수강신청을 할 수 있게 함.
  List<Widget> _registration() {
    return List.generate(5, (index) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Text('강의명 / 강사명', style: TextStyle(color: Colors.white),),
          ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            textStyle: const TextStyle(color: Colors.white)
          ), 
          child: const Text('수강신청') ),
        ],),),
      ),));
  }
}