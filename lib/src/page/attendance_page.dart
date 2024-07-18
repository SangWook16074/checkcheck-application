import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final List<Map<String, String>> students = [
    {'name': '민진수', 'status': '출석'},
    {'name': '이현희', 'status': '출석'},
    {'name': '최하니', 'status': '결석'},
    {'name': '배수정', 'status': '지각'},
    {'name': '신혜인', 'status': '출석'},
    {'name': '김은비', 'status': '출석'},
    {'name': '신지연', 'status': '출석'},
  ];

  String attendanceStatus = '출석 시작';

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
          '디자인 발상',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: const Text(
                '23명이 출석했어요',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              students[index]['name']!,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                          _buildAttendanceButton(index),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.white),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '출석 인정 시간',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    '09:00 - 09:10',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: attendanceStatus == '출석 시작'
                          ? Colors.orange
                          : Colors.grey,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        attendanceStatus = '출석 시작';
                      });
                    },
                    child: const Text(
                      '출석 시작',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: attendanceStatus == '출석 종료'
                          ? Colors.orange
                          : Colors.grey,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        attendanceStatus = '출석 종료';
                      });
                    },
                    child: const Text(
                      '출석 종료',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceButton(int index) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: students[index]['status'] == '출석'
            ? Colors.orange
            : students[index]['status'] == '결석'
                ? Colors.grey
                : Colors.grey.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: students[index]['status'],
            dropdownColor: Colors.black,
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            items: ['출석', '결석', '지각'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Center(
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                students[index]['status'] = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }
}
