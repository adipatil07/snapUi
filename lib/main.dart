import 'package:flutter/material.dart';

import 'features/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        primaryColor: Colors.red[300],
        primaryColorDark: Colors.black12
      ),
      home: Home(),
    );
  }
}

