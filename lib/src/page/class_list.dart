import 'package:checkcheck_project/src/page/registration_page.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_scrollbar.dart';

class classList extends StatelessWidget {
  const classList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {Navigator.pop(context);}),
        title: const Text('강의 목록', style: TextStyle(fontSize: 25),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollbar(
          // CustomScrollbar 추가
          child: SingleChildScrollView(
            // 스크롤 가능한 영역 추가
            child: Column(
              children: [
                CustomTextField(
                  hintText: '검색하기',
                  suffixIcon: Icon(Icons.search),
                ),
                SizedBox(height: 25),
                
                CustomButton(
                  label: "수강 신청하기",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => registation()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
