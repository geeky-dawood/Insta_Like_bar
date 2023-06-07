import 'package:flutter/material.dart';

import 'detail_page.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return
    SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>     MyApp(),

                    ),
                  );
                },
                child: Text('Home')))
          ],
        ),
      ),
    );
  }
}