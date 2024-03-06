import "package:flutter/material.dart";
import "package:flutter_catalog/pages/home.dart";
import "package:flutter_catalog/pages/login.dart";
import "package:flutter_catalog/utils/routes.dart";
import "package:flutter_catalog/widgets/themes.dart";

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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRotes: (context) => const HomePage(),
        MyRoutes.loginRoutes: (context) => Login(),
      },
    );
  }
}
