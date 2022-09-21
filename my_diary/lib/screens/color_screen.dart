import 'package:flutter/material.dart';
import 'package:my_diary/screens/home_screen.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen({
    Key? key,
    required this.selectedColor,
    required this.text
  }) : super(key: key);

  final Color selectedColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        backgroundColor: selectedColor,
      ),
      body: Container(
        color: selectedColor,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
