import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),
      ),
    ),
  );
}
