import 'package:flutter/material.dart';

class MyString extends StatelessWidget {
  const MyString({Key? key, this.myText, this.style}) : super(key: key);

  final String? myText;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Text(
        myText.toString(),
        style: style,
      ),
    );
  }
}
