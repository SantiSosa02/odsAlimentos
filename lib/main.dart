import 'package:flutter/material.dart';
import 'package:ods_alimentos/presentations/screens/screenFirst.dart';
import 'package:flutter/services.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ScreenFirst()
    );
  }
}