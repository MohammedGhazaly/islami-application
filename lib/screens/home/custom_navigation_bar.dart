import 'package:flutter/material.dart';

BottomNavigationBar buildCustomNavigationBar(
    {required int selectedIndex, required Function(int) onTapFunction}) {
  return BottomNavigationBar(
    currentIndex: selectedIndex,
    onTap: onTapFunction,
    items: const [
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/images/radio.png"),
          ),
          label: "Radio"),
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/images/sebha.png"),
          ),
          label: "Tasbeeh"),
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/images/hadith.png"),
          ),
          label: "Hadith"),
      BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/images/moshaf.png"),
          ),
          label: "Quran"),
    ],
  );
}
