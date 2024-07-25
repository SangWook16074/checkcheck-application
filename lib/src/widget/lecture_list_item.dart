import 'package:flutter/material.dart';

class LectureListItem extends StatelessWidget {
  final String title;
  final String location;

  const LectureListItem({
    required this.title,
    required this.location,
    Key? key,
  }) : super(key: key);

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
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              '|',
              style: const TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Text(
                location,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
