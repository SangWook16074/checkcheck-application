import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:checkcheck_project/src/widget/tip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  int selectedIndex = -1; // 선택된 항목의 인덱스


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
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  hintText: '검색하기',
                  suffixIcon: Icon(Icons.search),
                ),
                SizedBox(height: 5),

                Tip(), // tip 문구
                
                SizedBox(height: 5),
                
                ..._attendance(),

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
                          Container(
                            height: 60,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('월요일            |          09:00 ~ 11:00', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                                ],
                              ),),
                          ),
                          SizedBox(height: 20,),
                            Container(
                              height: 60,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('은봉관 302호', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                                  ],
                                ),),
                                ),
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
      );
  }
  
  List<Widget> _attendance() {
    return List.generate(7, (index) => GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.white),
            color: selectedIndex == index ? Colors.orange : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '시각디자인 실습           |                   은봉관 302 호',
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
  
}
