import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "splash-screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/main_bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
