import 'package:flutter/material.dart';
import 'package:learn_to_earn/screens/home_screen.dart';
import 'package:learn_to_earn/screens/detail_page.dart';

import 'SQFlite/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeSQF(),
    );
  }
}







