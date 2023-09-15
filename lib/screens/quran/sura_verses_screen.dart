import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/sura_details.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/quran/sura_verses_item.dart';
import 'package:provider/provider.dart';

class SuraVerses extends StatefulWidget {
  static String routeName = "sura-verses";

  const SuraVerses({super.key});

  @override
  State<SuraVerses> createState() => _SuraVersesState();
}

class _SuraVersesState extends State<SuraVerses> {
  List<String> suraContentList = [];

  @override
  Widget build(BuildContext context) {
    var appConfig = Provider.of<AppConfigProvider>(context);
    final size = MediaQuery.of(context).size;
    var suraDetails = ModalRoute.of(context)!.settings.arguments as SuraDetails;
    if (suraContentList.isEmpty) {
      loadSura(suraDetails.suraNumber);
    }
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(appConfig.isDarkTheme()
              ? "assets/images/main_bg_dark.png"
              : "assets/images/main_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            suraDetails.name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: suraContentList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.05),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  // White Color for lightmode

                  color: appConfig.isDarkTheme()
                      ? Theme.of(context).primaryColorDark
                      : Colors.white,
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    );
                  },
                  itemCount: suraContentList.length,
                  itemBuilder: (context, index) {
                    return SuraVersesItem(
                      suraVerse: suraContentList[index],
                      verseNumber: index + 1,
                    );
                  },
                ),
              ),
      ),
    );
  }

  void loadSura(int suraNumber) async {
    final suraContent =
        await rootBundle.loadString("assets/verses/$suraNumber.txt");
    suraContentList = suraContent.split("\n");
    setState(() {});
  }
}
