import 'package:flutter/material.dart';
import 'package:islami_app/screens/home/home_screen.dart';
import 'package:islami_app/screens/quran/sura_verses.dart';
import 'package:islami_app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraVerses.routeName: (context) => const SuraVerses(),
      },
    );
  }
}
