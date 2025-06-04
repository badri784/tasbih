// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tasbih/widget/counter.dart';

class Sabha extends StatefulWidget {
  const Sabha({super.key});

  @override
  State<Sabha> createState() => _SabhaState();
}

class _SabhaState extends State<Sabha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "سبحه الكترونيه",
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
        ),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.outlineVariant,
                    Theme.of(
                      context,
                    ).colorScheme.outlineVariant.withOpacity(0.8),
                    Theme.of(
                      context,
                    ).colorScheme.outlineVariant.withOpacity(0.7),
                    Theme.of(
                      context,
                    ).colorScheme.outlineVariant.withOpacity(0.6),
                    Theme.of(
                      context,
                    ).colorScheme.outlineVariant.withOpacity(0.5),
                    Theme.of(
                      context,
                    ).colorScheme.outlineVariant.withOpacity(0.4),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.settings, size: 35),
                  SizedBox(width: 12),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Counter(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "سبحه",
            icon: Icon(Icons.library_add),
            tooltip: 'سبحه الكترونية',
          ),
          BottomNavigationBarItem(
            label: "القران الكريم",
            icon: Icon(Icons.menu_book),
          ),
          BottomNavigationBarItem(label: "بوصله", icon: Icon(Icons.explore)),
        ],
      ),
    );
  }
}
