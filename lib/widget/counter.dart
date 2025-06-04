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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: inctementcounter,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                counter.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 45,
                ),
              ),
            ),
            SizedBox(height: 15),

            OutlinedButton.icon(
              onPressed: () => resetcounter(),
              label: Text(
                "أعادة البدأ",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 18,
                ),
              ),
              icon: Icon(
                Icons.restart_alt,
                color: Theme.of(context).colorScheme.onBackground,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
