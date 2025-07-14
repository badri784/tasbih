import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  final List<String> azkarList = const [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
    "أستغفر الله",
    "سبحان الله وبحمده",
    "سبحان الله العظيم",
    'سبحان الله وبحمده عدد خلقه ورضا نفسه وزنه عرشه ومداد كلماته  سبحان الله وبحمده سبحان الله العظيم',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("اختر ذكر"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              azkarList[index],

              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.pop(context, azkarList[index]); // رجع الذكر
            },
          );
        },
      ),
    );
  }
}
