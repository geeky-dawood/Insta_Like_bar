import 'package:flutter/material.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(child: Text('Text'))
          ],
        ),
      ),
    );
  }
}