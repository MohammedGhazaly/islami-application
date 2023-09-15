import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/hadith/hadith_content_screen.dart';
import 'package:islami_app/screens/home/home_screen.dart';
import 'package:islami_app/screens/quran/sura_verses_screen.dart';
import 'package:islami_app/themes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 4));
  runApp(
    ChangeNotifierProvider<AppConfigProvider>(
      child: const MyApp(),
      create: (context) {
        return AppConfigProvider(appLanguage: "en");
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var appConfig = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appConfig.appLanguage),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraVerses.routeName: (context) => const SuraVerses(),
        HadithContentScreen.routeName: (context) => const HadithContentScreen()
      },
    );
  }
}
