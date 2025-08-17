// ignore_for_file: deprecated_member_use

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbih/StateMangment/nav_bar_provider.dart';

import 'qibla_screen.dart';
import 'quran_screen.dart';
import 'package:flutter/material.dart';
import 'package:tasbih/widget/counter.dart';

class Sabha extends ConsumerWidget {
  Sabha({super.key});

  final pages = [const Counter(), const QuranScreen(), const QiblaScreen()];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navBarProvider);
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          ref.read(navBarProvider.notifier).setscreen(index);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'سبحه',
            icon: Icon(Icons.library_add),
            tooltip: 'سبحه الكترونية',
          ),
          BottomNavigationBarItem(
            label: 'القران الكريم',
            icon: Icon(Icons.menu_book),
          ),
          BottomNavigationBarItem(
            label: 'بوصله',
            icon: Icon(Icons.explore),
            tooltip: 'اتجاه القبله',
          ),
        ],
      ),
    );
  }
}
