import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith/hadith_screen.dart';
import 'package:islami_app/screens/home/custom_navigation_bar.dart';
import 'package:islami_app/screens/quran/quran_screen.dart';
import 'package:islami_app/screens/radio/radio_screen.dart';
import 'package:islami_app/screens/tasbeeh/tasbeeh_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "splash-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      RadioScreen(),
      TasbeehScreen(),
      HadithScreen(),
      QuranScreen()
    ];
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/main_bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: buildCustomNavigationBar(
            selectedIndex: selectedIndex,
            onTapFunction: (index) {
              selectedIndex = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
