import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _profile(),
            const SizedBox(height: 30),
            _lectureList(),
          ],
        ),
      ),
    );
  }

  /// 학생 본인의 사진, 이름, 학번, 학과를 보여줌
  Widget _profile() {
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://imgnews.pstatic.net/image/109/2024/05/27/0005084735_001_20240527141005335.jpg?type=w647",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
            "카리나 (202408071)",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "무용학과",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  /// 학생 본인이 수강하고 있는 강의 목록을 보여줌
  Widget _lectureList() {
    final lectures = [
      '무용학개론',
      '현대무용',
      '한국무용',
      '발레',
      '안무법',
      '무용사',
      '무용심리학',
      '무용교육론',
    ];

    return SingleChildScrollView(
      child: SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: lectures.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Center(
                  child: Text(
                    lectures[index],
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
