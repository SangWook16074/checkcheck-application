import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';

class LectureListingsPage extends StatefulWidget {
  @override
  _LectureListingsPageState createState() => _LectureListingsPageState();
}

class _LectureListingsPageState extends State<LectureListingsPage> {
  final List<String> lectures = List.generate(10, (index) => '강의명');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '개설한 강의목록',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextField(
              hintText: '강의명',
              suffixIcon: Icon(Icons.search, color: Colors.black),
            ),
          ),
          SizedBox(height: 16.0), // 강의명 텍스트 필드와 강의명 컨테이너 사이의 간격
          Expanded(
            child: ListView.builder(
              itemCount: lectures.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: LectureItem(),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: IconButton(
                  icon: Icon(Icons.delete, size: 36, color: Colors.white),
                  onPressed: () {
                    // 요기에는 삭제 버튼 눌렀을 때의 동작 정의하기
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LectureItem extends StatefulWidget {
  @override
  _LectureItemState createState() => _LectureItemState();
}

class _LectureItemState extends State<LectureItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '강의명',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _isSelected ? Colors.orange : Colors.grey,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: _isSelected
                  ? Icon(Icons.check, color: Colors.white)
                  : Text('선택'),
            ),
          ],
        ),
      ),
    );
  }
}

// 그라데이션 효과 넣으려면 어떻게 해야하는지 모르겠어요..