import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  const TextBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Roboto"),
        ),
      ),
    );
  }
}
