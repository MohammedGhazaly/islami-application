import 'package:flutter/material.dart';
import 'package:islami_app/asset_data.dart';
import 'package:islami_app/screens/quran/sura_name_widget.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Image.asset("assets/images/quran_logo.png")),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            "Sura Name",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
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
              itemCount: suraNames.length,
              itemBuilder: (context, index) {
                return SuraNameWidget(
                  suraName: suraNames[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
