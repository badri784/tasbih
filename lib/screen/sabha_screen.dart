// ignore_for_file: deprecated_member_use

import 'qibla_screen.dart';
import 'quran_screen.dart';
import 'package:flutter/material.dart';
import 'package:tasbih/widget/counter.dart';

class Sabha extends StatefulWidget {
  const Sabha({super.key});

  @override
  State<Sabha> createState() => _SabhaState();
}

class _SabhaState extends State<Sabha> {
  int selectPageIdex = 0;
  void selectpage(int index) {
    setState(() {
      selectPageIdex = index;
    });
  }

  final List<Widget> pages = [
    const Counter(),
    const QuranScreen(),
    const QiblaScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectPageIdex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPageIdex,
        onTap: selectpage,
        items: const [
          BottomNavigationBarItem(
            label: "سبحه",
            icon: Icon(Icons.library_add),
            tooltip: 'سبحه الكترونية',
          ),
          BottomNavigationBarItem(
            label: "القران الكريم",
            icon: Icon(Icons.menu_book),
          ),
          BottomNavigationBarItem(
            label: "بوصله",
            icon: Icon(Icons.explore),
            tooltip: "اتجاه القبله",
          ),
        ],
      ),
    );
  }
}
