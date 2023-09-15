import 'package:flutter/material.dart';
import 'package:islami_app/screens/settings/language_section.dart';
import 'package:islami_app/screens/settings/theme_section.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LanguageSection(),
          SizedBox(
            height: 24,
          ),
          ThemeSection(),
        ],
      ),
    );
  }
}
