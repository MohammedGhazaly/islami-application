import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/sura_details.dart';

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
    var suraDetails = ModalRoute.of(context)!.settings.arguments as SuraDetails;
    if (suraContentList.isEmpty) {
      loadSura(suraDetails.suraNumber);
    }
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_bg.png"),
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
            : ListView.builder(
                itemCount: suraContentList.length,
                itemBuilder: (context, index) {
                  return Text(suraContentList[index]);
                },
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
