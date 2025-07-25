// ignore_for_file: deprecated_member_use
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
        actions: [
          IconButton(
            onPressed: openAzkarScreen,
            icon: const Icon(Icons.menu_book),
            tooltip: 'اختر ذكر',
          ),
        ],
      ),
      drawer: const DrawerContent(),
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
              decoration: const InputDecoration(border: InputBorder.none),
              textAlign: TextAlign.center,
              textInputAction: TextInputAction.done,
              maxLines: null,
              onSubmitted: (_) {
                FocusScope.of(context).unfocus();
              },
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            /// ✅ Slide-in Animation
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                final inAnimation = Tween<Offset>(
                  begin: const Offset(0.0, 1.0), // من تحت
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
