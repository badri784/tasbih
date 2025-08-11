import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../StateMangment/theme_mode_provider.dart';

class SettingsSecreen extends ConsumerWidget {
  const SettingsSecreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'), centerTitle: true),
      body: Card(
        child: SwitchListTile.adaptive(
          contentPadding: const EdgeInsets.only(left: 15, right: 15),
          title: const Text('Theme'),
          subtitle: const Text('Dark Theme'),
          value: ref.watch(themeModePro) == ThemeMode.light,
          onChanged:
              (bool value) => ref.read(themeModePro.notifier).onToggleTheme(),
        ),
      ),
    );
  }
}
