import 'package:bitsalumniconnect/page3.dart';
import 'package:bitsalumniconnect/page4.dart';
import 'package:bitsalumniconnect/signuppage.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'page 6.dart';
import 'package:bitsalumniconnect/Onboarding5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageFour(),
    );
  }
}
