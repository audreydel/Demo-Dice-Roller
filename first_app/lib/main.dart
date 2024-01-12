import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  const Color yellow = Colors.yellow;
  const Color pink = Colors.pink;
  const Color purple = Color.fromARGB(255, 129, 18, 148);
  
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([yellow, pink, purple]),
      ),
    ),
  );
}
