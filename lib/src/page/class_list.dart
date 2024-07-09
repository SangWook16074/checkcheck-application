import 'package:checkcheck_project/src/page/registration_page.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_elevated_botton.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_scrollbar.dart';

class classList extends StatelessWidget {

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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:  8.0),
                  child: CustomTextField(
                    hintText: '검색하기',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: 5),
                _tip(),
              SizedBox(height: 5), ...
              _classList(),
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

  /// 수강하는 과목들이 list로 보이고,
  /// 강의명 옆에 출석체크 버튼이 있어서
  /// 버튼을 눌러 출석체크가 가능함
  List<Widget> _classList() {
    return List.generate(10, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60, 
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.white,),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:  8.0, horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          const Text('무용학개론', style: TextStyle(color: Colors.white),),
                          CustomElevatedButton(),
                        ],),
                      ),
                    ),
                  ),);
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
