import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_details.dart';

class SuraVerses extends StatelessWidget {
  static String routeName = "sura-verses";
  const SuraVerses({super.key});

  @override
  Widget build(BuildContext context) {
    var suraDetails = ModalRoute.of(context)!.settings.arguments as SuraDetails;
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
      ),
    );
  }
}
