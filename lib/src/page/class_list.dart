import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_button.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:checkcheck_project/src/widget/tip.dart';

class ClassList extends StatefulWidget {
  const ClassList({super.key});

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  final ScrollController _scrollController = ScrollController();
  Color _buttonColor = Colors.grey;

  void _changeColor() {
    setState(() {
      _buttonColor = Colors.orange;
    });
  }

  @override
  Widget build(context) {
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
                _classList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _classList() {
    return Column(
        children: List.generate(
      7,
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
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      '무용학개론',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '교수',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: _buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  onPressed: () {
                    _changeColor();
                    _classBottomSheet();
                  },
                  child: Text('삭제'),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future<dynamic> _classBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.orange,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '비전과진로',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(color: Colors.white, thickness: 2)
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '월요일            |          09:00 ~ 11:00',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('삭제한 강의는 복구할 수 없어요',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      Text('삭제하시겠어요?',
                          style: TextStyle(color: Colors.white, fontSize: 15))
                    ],
                  ),
                ),
                CustomButton(
                  label: '강의 삭제하기',
                  onPressed: () {
                    Navigator.pop(context); // BottomSheet 닫기
                    _classAlertDialog(); // AlertDialog 표시
                  },
                  color: Colors.black,
                )
              ],
            ),
          );
        });
  }

  void _classAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            width: 100.0,
            height: 100.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/image/Layer_1 (3).png',
                  height: 50,
                ), // 로고 추가할 위치
                Text('강의 삭제가 완료되었어요!'),
                Text('비전과 진로'),
              ],
            ),
          ),
          actions: <Widget>[
            CustomButton(label: '확인'),
          ],
        );
      },
    );
  }

  PreferredSizeWidget _appbar(BuildContext context) {
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
        '수강 신청 목록',
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
