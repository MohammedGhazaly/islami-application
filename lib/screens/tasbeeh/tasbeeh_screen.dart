import 'package:flutter/material.dart';
import 'package:islami_app/screens/tasbeeh/rotated_sebha_widget.dart';

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          createAnimatedSebha(
              turns: turns,
              onTapFunction: () {
                setState(() {
                  turns += 1 / 33;
                });
              }),
        ],
      ),
    );
  }
}
