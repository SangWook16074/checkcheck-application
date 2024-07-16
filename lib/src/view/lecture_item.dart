import 'package:flutter/material.dart';

class LectureItem extends StatefulWidget {
  const LectureItem({super.key});

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
            const Text(
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
                  ? const Icon(Icons.check, color: Colors.white)
                  : const Text('선택'),
            ),
          ],
        ),
      ),
    );
  }
}
