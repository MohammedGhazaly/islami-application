import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith/hadith_content_screen.dart';
import 'package:islami_app/screens/home/home_screen.dart';
import 'package:islami_app/screens/quran/sura_verses_screen.dart';
import 'package:islami_app/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 4));
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
        HadithContentScreen.routeName: (context) => const HadithContentScreen()
      },
    );
  }
}
