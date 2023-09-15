import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

BottomNavigationBar buildCustomNavigationBar(
    {required int selectedIndex,
    required Function(int) onTapFunction,
    required BuildContext context}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: false,
    currentIndex: selectedIndex,
    onTap: onTapFunction,
    items: [
      BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage("assets/images/radio.png"),
          ),
          label: AppLocalizations.of(context)!.radio),
      BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage("assets/images/sebha.png"),
          ),
          label: AppLocalizations.of(context)!.sebha),
      BottomNavigationBarItem(
          icon: const ImageIcon(
            AssetImage("assets/images/hadith.png"),
          ),
          label: AppLocalizations.of(context)!.hadith),
      BottomNavigationBarItem(
        icon: const ImageIcon(
          AssetImage("assets/images/moshaf.png"),
        ),
        label: AppLocalizations.of(context)!.quran,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.settings),
        label: AppLocalizations.of(context)!.settings,
      ),
    ],
  );
}
