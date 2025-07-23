import 'package:flutter/material.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  final List<String> azkarList = const [
    "سبحان الله",
    "اللهم صل علي محمد",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
    "أستغفر الله",
    "سبحان الله وبحمده",
    "سبحان الله العظيم",
    "سبحان الله وبحمده عدد خلقه ورضا نفسه وزنه عرشه ومداد كلماته",
    "سُبْحانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِه، وَرِضا نَفْسِه، وَزِنَةَ عَرْشِه، وَمِدادَ كَلِماتِه.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("اختر ذكر", style: TextStyle(fontSize: 24)),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return Card.outlined(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              leading: CircleAvatar(
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.primary.withOpacity(0.2),
                child: Icon(
                  Icons.auto_awesome,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              title: Text(
                azkarList[index],
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.pop(context, azkarList[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
