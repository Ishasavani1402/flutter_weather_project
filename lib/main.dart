// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:weather_project/screen/splashscreen.dart';

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
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
