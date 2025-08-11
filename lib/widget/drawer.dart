// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:tasbih/screen/morningaskar.dart';
import 'package:tasbih/screen/settings_secreen.dart';
import 'package:tasbih/screen/sleeping_zekr.dart';
import '../screen/evening_zekar.dart';
import '../screen/post_prayer_azkar.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const SettingsSecreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.settings, size: 50),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'الاعدادات',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.wb_sunny),
                      SizedBox(width: 10),
                      SizedBox(width: 7),
                      Text(
                        'اذكار الصباح',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MorningAzkar(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.nightlight_round),
                      SizedBox(width: 10),
                      SizedBox(width: 7),
                      Text(
                        'اذكار المساء',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EveningZekar(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.mosque),
                      SizedBox(width: 10),
                      SizedBox(width: 7),
                      Text(
                        'الأذكار بعد الصلاة ',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PostPrayerAzkar(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.bedtime),
                      SizedBox(width: 10),
                      SizedBox(width: 7),
                      Text(
                        'اذكار النوم',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SlipingZekr(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
