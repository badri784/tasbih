// ignore_for_file: deprecated_member_use
import 'package:flutter/services.dart';

import '../screen/azkar_screen.dart';
import 'drawer.dart';
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

  void openAzkarScreen() async {
    final selectedZekr = await Navigator.push(
      context,
      MaterialPageRoute(builder: (ctx) => const AzkarScreen()),
    );

    if (selectedZekr != null && selectedZekr is String) {
      setState(() {
        textediting.text = selectedZekr;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),

        backgroundColor: const Color.fromARGB(255, 36, 73, 104),
        title: const Text('سبحه الكترونيه', style: TextStyle(fontSize: 28)),
        centerTitle: true,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: openAzkarScreen,
            icon: const Icon(Icons.menu_book),
            tooltip: 'اختر ذكر',
            color: const Color.fromARGB(255, 133, 163, 187),
          ),
        ],
      ),

      drawer: const DrawerContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: resetcounter,
        tooltip: 'Reset Counter',
        backgroundColor: const Color.fromARGB(255, 79, 127, 167),
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
              decoration: const InputDecoration(border: InputBorder.none),
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.done,
              maxLines: null,
              onTapOutside: (_) {
                FocusScope.of(context).unfocus();
              },
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                final inAnimation = Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation);

                return SlideTransition(position: inAnimation, child: child);
              },
              child: Text(
                '$counter',
                key: ValueKey<int>(counter),
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
