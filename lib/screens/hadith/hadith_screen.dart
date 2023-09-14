import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadith_details.dart';
import 'package:islami_app/screens/hadith/hadith_content_screen.dart';
import 'package:islami_app/screens/hadith/hadith_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<Hadith> hadithsListFinal = [];

  @override
  Widget build(BuildContext context) {
    if (hadithsListFinal.isEmpty) {
      loadHadithFile();
    }
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Image.asset("assets/images/hadith_screen_image.png")),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.hadith_number,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          hadithsListFinal.isEmpty
              ? Expanded(
                  flex: 2,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              : Expanded(
                  flex: 2,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 2,
                        // indent: 20,
                        // endIndent: 20,
                      );
                    },
                    itemCount: hadithsListFinal.length,
                    itemBuilder: (context, index) {
                      return HadithNameItem(
                        hadithNumber: hadithsListFinal[index].title,
                        onTapFunction: () {
                          Navigator.pushNamed(
                              context, HadithContentScreen.routeName,
                              arguments: hadithsListFinal[index]);
                        },
                      );
                    },
                  ),
                )
        ],
      ),
    );
  }

  void loadHadithFile() async {
    String hadiths = await rootBundle.loadString("assets/hadith/ahadith.txt");
    List<String> hadithsList = hadiths.split("#\r\n");

    for (int i = 0; i < hadithsList.length; i++) {
      List<String> hadithLines = hadithsList[i].split("\n");
      print(hadithLines[2]);
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      hadithsListFinal.add(Hadith(title: title, content: hadithLines));
    }

    setState(() {});
  }
}
