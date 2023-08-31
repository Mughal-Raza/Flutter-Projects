import 'package:flutter/material.dart';
import 'package:first_app/grad_cont.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradCont(
          Color.fromARGB(255, 255, 4, 217),
          Color.fromARGB(255, 198, 236, 6),
        ),
      ),
    ),
  );
}
