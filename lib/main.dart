import "package:flutter/material.dart";
import "package:flutter_catalog/pages/login.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // String dev = "world best programmer";

    // final pi = 3.2;
    // const devesh = "devesh";
    // var deve = 1;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Login(),
        "/login": (context) => Login(),
      },
    );
  }
}
