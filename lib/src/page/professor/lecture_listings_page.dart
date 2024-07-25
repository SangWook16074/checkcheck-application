import 'package:checkcheck_project/src/page/professor/lecture_listings_delete_page.dart';
import 'package:flutter/material.dart';
import 'package:checkcheck_project/src/widget/custom_text_field.dart';
import 'package:checkcheck_project/src/widget/lecture_list_item.dart';

class LectureListingsPage extends StatefulWidget {
  @override
  _LectureListingsPageState createState() => _LectureListingsPageState();
}

class _LectureListingsPageState extends State<LectureListingsPage> {
  final List<Map<String, String>> lectures = [
    {'title': '디자인 발상', 'location': '인관 203호'},
    {'title': '그래픽 디자인 이해', 'location': '은봉관 304호'},
    {'title': '사용자 경험 디자인', 'location': '은봉관 304호'},
    {'title': '색채 응용 디자인', 'location': '은봉관 202호'},
    {'title': '영상디자인', 'location': '덕관 202호'},
    {'title': '이미지 크리에이션', 'location': '은봉관 302호'},
    {'title': '시각적 발상과 표현', 'location': '인관 205호'},
  ];

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
              hintText: '검색하기',
              suffixIcon: Icon(Icons.search, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'tip. 초성 검색도 가능해요 ex) ㅁㄹㅎ > 물리학',
                style: TextStyle(color: Colors.grey),
              ),
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

                  // 이부분을 위젯폴더 안에 분리했습니다
                  child: LectureListItem(
                    title: lectures[index]['title']!,
                    location: lectures[index]['location']!,
                  ),
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
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: IconButton(
                  icon: const Icon(Icons.delete, size: 36, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LectureListingsDeletePage(),
                      ),
                    );
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
