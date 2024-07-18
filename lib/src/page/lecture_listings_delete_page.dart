import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';

class LectureListingsDeletePage extends StatefulWidget {
  @override
  _LectureListingsDeletePageState createState() =>
      _LectureListingsDeletePageState();
}

class _LectureListingsDeletePageState extends State<LectureListingsDeletePage> {
  final List<String> lectures = [
    '디자인 발상',
    '그래픽 디자인 이해',
    '사용자 경험 디자인',
    '색채 응용 디자인',
    '영상디자인',
    '이미지 크리에이션',
    '시각적 발상과 표현',
  ];

  void _showDeleteBottomSheet(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DeleteBottomSheet(
          title: title,
          onConfirmDelete: () => Navigator.pop(context),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          '      개설한 강의 목록',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const CustomTextField(
              hintText: 'ex) 시각디자인 실습',
              suffixIcon: Icon(Icons.search, color: Colors.black),
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: lectures.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: LectureItem(
                    title: lectures[index],
                    onDelete: () {
                      _showDeleteBottomSheet(context, lectures[index]);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LectureItem extends StatefulWidget {
  final String title;
  final VoidCallback onDelete;

  const LectureItem({
    required this.title,
    required this.onDelete,
    Key? key,
  }) : super(key: key);

  @override
  _LectureItemState createState() => _LectureItemState();
}

class _LectureItemState extends State<LectureItem> {
  bool _isDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _isDeleted ? Colors.orange : Colors.grey,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  _isDeleted = !_isDeleted;
                });
                widget.onDelete();
              },
              child: Text('삭제'),
            ),
          ],
        ),
      ),
    );
  }
}

// 바텀시트 부분

class DeleteBottomSheet extends StatelessWidget {
  final String title;
  final VoidCallback onConfirmDelete;

  const DeleteBottomSheet({
    required this.title,
    required this.onConfirmDelete,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Divider(color: Colors.white),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '월요일',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '9:00 - 11:00',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            '삭제한 강의는 복구할 수 없어요\n삭제하시겠어요?',
            style: TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: onConfirmDelete,
              child: Text('강의 삭제하기'),
            ),
          ),
        ],
      ),
    );
  }
}
