import 'package:flutter/material.dart';

class CustomScrollbar extends StatelessWidget {
  final Widget child;

  const CustomScrollbar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
