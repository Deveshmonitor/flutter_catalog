import "package:flutter/material.dart";
import "package:flutter_catalog/home.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String dev = "world best programmer";

    // final pi = 3.2;
    // const devesh = "devesh";
    // var deve = 1;
    return MaterialApp(home: HomePage());
  }
}
