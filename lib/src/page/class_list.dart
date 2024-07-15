import 'package:checkcheck_project/src/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/class_bottom_sheet.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:checkcheck_project/src/widget/tip.dart';

class ClassList extends StatelessWidget {
  // ScrollController를 추가합니다.
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scrollbar(
          thumbVisibility: true,
          controller: _scrollController,  
          child: SingleChildScrollView(
            controller: _scrollController,  
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomTextField(
                    hintText: '검색하기',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: 5),
                Tip(),
                SizedBox(height: 5),
                ..._classList(context),
                CustomButton(
                  label: "수강 신청하기",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _classList(BuildContext context) {
    return List.generate(
      10,
      (index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '무용학개론',
                  style: TextStyle(color: Colors.white),
                ),
                CustomElevatedButton(
                  label: "수강신청",
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ClassBottomSheet(
                          title: '시각디자인실습',
                          date: '월요일',
                          label: '강의를 신청하시겠어요?',
                        );
                      },
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

  AppBar _appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text(
        '강의 목록',
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
