// @dart=2.9

import 'package:flutter/material.dart';
import 'Screens/splash_screen.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yenedify',
      theme: ThemeData(
        primaryColor: Colors.black,
      backgroundColor: Colors.black),
      home: loading_Screen(),
    );
  }
}
