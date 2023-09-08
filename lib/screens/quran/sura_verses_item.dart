import 'package:flutter/material.dart';

class SuraVersesItem extends StatelessWidget {
  final String suraVerse;
  final int verseNumber;
  const SuraVersesItem(
      {super.key, required this.suraVerse, required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$suraVerse{$verseNumber} ",
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
