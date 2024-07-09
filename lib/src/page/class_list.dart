import 'package:checkcheck_project/src/page/registration_page.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_elevated_botton.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_scrollbar.dart';

class classList extends StatelessWidget {
  final List<String> classes = List.generate(10, (index) => '강의명');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Colors.black,
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
                SizedBox(height: 5),

                _tip(),
              SizedBox(height: 5),

              for (var classList in classes)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                    hintText: '강의명',
                    hintStyle: TextStyle(color: Colors.white),
                    suffix: CustomElevatedButton()),),
                ),
                SizedBox(height: 20),
                

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

  /// 검색하기에서 초성 검색도 가능하다는 tip 문구
  Widget _tip() {
    return const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'tip. 초성 검색도 가능해요 ex) ㅁㄹㅎ > 물리학',
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.left,
              ),);
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,), onPressed: () {Navigator.pop(context);}),
      title: const Text('강의 목록', style: TextStyle(fontSize: 25, color: Colors.white ),),
    );
  }
}
