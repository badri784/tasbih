import 'package:flutter/material.dart';

class AllAzkar extends StatelessWidget {
  const AllAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("جميع الاذكار"), centerTitle: true),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Hi haw Are you")],
      ),
    );
  }
}
