import 'package:flutter/material.dart';

class AttendanceManagementPage extends StatelessWidget {
  const AttendanceManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          '      누적출결 관리',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '전체 출석을 한번에 관리하세요',
                style: TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      StudentAttendanceItem(
                        studentName: students[index]['name']!,
                        attendance: students[index]['attendance']!,
                      ),
                      const Divider(color: Colors.white),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentAttendanceItem extends StatelessWidget {
  final String studentName;
  final String attendance;

  const StudentAttendanceItem({
    required this.studentName,
    required this.attendance,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                studentName,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color: _getAttendanceColor(attendance),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(
                  attendance,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                if (int.tryParse(attendance) != null &&
                    int.parse(attendance) >= 3)
                  const Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Icon(
                      Icons.error_outline,
                      color: Colors.orange,
                      size: 16,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 3 이상일때와 나머지 구분

  Color _getAttendanceColor(String attendance) {
    final attendanceValue = int.tryParse(attendance) ?? 0;
    if (attendanceValue >= 3) {
      return Colors.grey.shade700;
    } else if (attendanceValue > 0) {
      return Colors.grey.shade400;
    } else {
      return Colors.grey.shade400;
    }
  }
}

final List<Map<String, String>> students = [
  {'name': '민진수', 'attendance': '3'},
  {'name': '이현희', 'attendance': '2/3'},
  {'name': '최하니', 'attendance': '0'},
  {'name': '배수정', 'attendance': '0'},
  {'name': '신혜인', 'attendance': '0'},
  {'name': '김은비', 'attendance': '0'},
  {'name': '신지연', 'attendance': '0'},
  {'name': '이서현', 'attendance': '0'},
];
