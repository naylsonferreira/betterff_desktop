import 'package:flutter/material.dart';

class BottomBarApp extends StatefulWidget {
  const BottomBarApp({super.key});

  @override
  State<BottomBarApp> createState() => _BottomBarAppState();
}

class _BottomBarAppState extends State<BottomBarApp> {
  int currentIndex = 0;

  setCurrentPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: 'Login',
        ),
      ],
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
        switch (index) {
          case 0:
            break;
          case 1:
            break;
        }
      },
      fixedColor: Colors.blue,
    );
  }
}
