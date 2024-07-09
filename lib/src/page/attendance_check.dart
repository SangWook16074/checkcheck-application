import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_scrollbar.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  final List<String> attendances = List.generate(7, (index) => '시각디자인실습            |                    은봉관 302호');
  final List<FocusNode> focusNodes = List.generate(7, (_) => FocusNode());

  @override
  void dispose() {
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          '강의 목록',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  hintText: '검색하기',
                  suffixIcon: Icon(Icons.search),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'tip. 초성 검색도 가능해요 ex) ㅁㄹㅎ > 물리학',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 5),
                for (int i = 0; i < attendances.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      focusNode: focusNodes[i],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: attendances[i],
                        hintStyle: TextStyle(
                          color: focusNodes[i].hasFocus ? Colors.black : Colors.white,
                        ),
                        fillColor: focusNodes[i].hasFocus ? Colors.orange : Colors.black,
                        filled: true,
                      ),
                      style: TextStyle(color: Colors.white),
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(focusNodes[i]);
                        });
                      },
                    ),
                  ),
                SizedBox(height: 20),
                CustomButton(label: '출석 체크하기', onPressed: () {
                  showModalBottomSheet(
                    context: context, 
                    builder: (context) {
                    return Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(children: [
                              Text('시각디자인실습', style: TextStyle(color: Colors.white, fontSize: 20),)
                            ],),
                          ),
                          SizedBox(height: 15),
                          TextField(
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                            hintText: '월요일   |   9:00 ~ 11:00',
                            hintStyle: TextStyle(color: Colors.white),
                          )),
                          SizedBox(height: 20,),
                          TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                            hintText: '은봉관 302호',
                            hintStyle: TextStyle(color: Colors.white)
                          )),
                          SizedBox(height: 20),
                          CustomButton(label: '출석 체크하기', onPressed: () {})
                      ],),
                    );
                  });
                }),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
