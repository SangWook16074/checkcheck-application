import 'package:checkcheck_project/src/pages/login_page.dart';
import 'package:checkcheck_project/src/pages/main_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: [
          const MainPage(),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "홈"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.handshake,
                color: Colors.black,
              ),
              label: "수강신청"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle,
                color: Colors.black,
              ),
              label: "출결현황"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: "마이페이지"),
        ],
      ),
    );
  }
}
