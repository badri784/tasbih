// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class QiblaScreen extends StatelessWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isdark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "اتجاه القبله",
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("404")],
      ),
    );
  }
}
