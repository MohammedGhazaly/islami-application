import 'package:flutter/material.dart';
import 'package:islami_app/models/hadith_details.dart';

class HadithContentScreen extends StatelessWidget {
  static String routeName = "hadith-content-screen";
  const HadithContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var hadithDetails = ModalRoute.of(context)!.settings.arguments as Hadith;
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
            hadithDetails.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.05),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Text(
                "${hadithDetails.content}",
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              );
            },
          ),
        ),
      ),
    );
  }
}
