import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.outText, {super.key});
  final String outText;
  @override
  Widget build(context) {
    return Center(
      child: Text(
        outText,
        style: const TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 0, 0, 0),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
