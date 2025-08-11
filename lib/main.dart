import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasbih/StateMangment/theme_mode_provider.dart';
import 'screen/sabha_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar'), Locale('en')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,

      //light Theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: const Color.fromARGB(255, 44, 5, 184),
        ),
        // drawerTheme: DrawerThemeData(
        //   backgroundColor: Color.fromARGB(200, 52, 50, 144),
        // ),
      ),
      // dark Theme
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 44, 5, 184),
        ),
      ),

      themeMode: ref.watch(themeModePro),
      themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
      themeAnimationDuration: const Duration(milliseconds: 752),
      home: const Sabha(),
    );
  }
}
