// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QiblaScreen extends StatelessWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),

        backgroundColor: const Color.fromARGB(255, 36, 73, 104),
        title: Text(
          'اتجاه القبله',
          style: TextStyle(
            fontSize: 28,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        centerTitle: true,
        elevation: 4,
      ),

      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('404')],
      ),
    );
  }
}
