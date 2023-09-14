import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadith/hadith_screen.dart';
import 'package:islami_app/screens/home/custom_navigation_bar.dart';
import 'package:islami_app/screens/quran/quran_screen.dart';
import 'package:islami_app/screens/radio/radio_screen.dart';
import 'package:islami_app/screens/tasbeeh/tasbeeh_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    String appBarText = AppLocalizations.of(context)!.radio;
    switch (selectedIndex) {
      case 0:
        appBarText = AppLocalizations.of(context)!.radio;
        break;
      case 1:
        appBarText = AppLocalizations.of(context)!.sebha;
        break;
      case 2:
        appBarText = AppLocalizations.of(context)!.hadith;
        break;
      case 3:
        appBarText = AppLocalizations.of(context)!.quran;
        break;
    }
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
            appBarText,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: buildCustomNavigationBar(
            context: context,
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
