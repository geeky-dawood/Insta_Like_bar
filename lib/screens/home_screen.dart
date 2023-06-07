import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_to_earn/screens/screen_one.dart';
import 'package:learn_to_earn/screens/screen_three.dart';
import 'package:learn_to_earn/screens/screen_two.dart';
class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page1(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page2(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page3(),
              );
            });
          default: return CupertinoTabView(builder: (context) {
            return const CupertinoPageScaffold(
              child: Page1(),
            );
          });
        }
      },
    );
  }
}