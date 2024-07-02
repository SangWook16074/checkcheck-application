import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: [
          const HomePage(),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
