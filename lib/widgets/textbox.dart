import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  String text;
  TextBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}
