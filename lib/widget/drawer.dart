// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tasbih/screen/all_azkar.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
                ],
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.settings, size: 35),
                const SizedBox(width: 12),
                Text(
                  "الاعدادات",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(width: 10),
                    SizedBox(width: 7),
                    Text(
                      "جميع الاذكار",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AllAzkar()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
