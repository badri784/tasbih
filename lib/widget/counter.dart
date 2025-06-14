// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  void inctementcounter() {
    setState(() {
      counter++;
    });
  }

  void resetcounter() {
    setState(() {
      counter = 0;
    });
  }

  TextEditingController textediting = TextEditingController();
  @override
  void dispose() {
    textediting.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isdark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "سبحه الكترونيه",
          style: TextStyle(
            fontSize: 28,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        backgroundColor:
            isdark
                ? Theme.of(context).colorScheme.onInverseSurface
                : Theme.of(context).colorScheme.primary,
        centerTitle: true,
        forceMaterialTransparency: false,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primary.withOpacity(1),
                  ],
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.settings, size: 35),
                  const SizedBox(width: 12),
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
      floatingActionButton: FloatingActionButton(
        onPressed: resetcounter,
        tooltip: 'Reset Counter',

        child: const Icon(Icons.restart_alt),
      ),
      body: GestureDetector(
        onTap: inctementcounter,
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textediting,
              decoration: const InputDecoration(
                border: InputBorder.none,
                label: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(" Enter Text !", style: TextStyle(fontSize: 25)),
                ),
              ),
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) {
                FocusScope.of(context).unfocus();
              },
              style: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
            Center(
              child: Text(
                counter.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 55,
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
