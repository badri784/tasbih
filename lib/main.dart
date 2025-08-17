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
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),

          backgroundColor: Color.fromARGB(255, 36, 73, 104),

          centerTitle: true,
          elevation: 4,
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: const Color.fromARGB(255, 44, 5, 184),
        ),
      ),
      // dark Theme
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),

          backgroundColor: Color.fromARGB(255, 36, 73, 104),

          centerTitle: true,
          elevation: 4,
        ),

        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 44, 5, 184),
        ),
      ),

      themeMode: ref.watch(themeModePro),
      themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
      themeAnimationDuration: const Duration(milliseconds: 752),
      home: Sabha(),
    );
  }
}
