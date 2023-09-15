import 'package:flutter/material.dart';
import 'package:islami_app/screens/tasbeeh/rotated_sebha_body_widget.dart';
import 'package:islami_app/screens/tasbeeh/tasbeeh_number_widget.dart';
import 'package:islami_app/screens/tasbeeh/tasbeeh_phase.dart';

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  double turns = 0.0;
  int tasbeehNumber = 0;
  String tasbeehPhase = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    if (tasbeehNumber >= 0 && tasbeehNumber < 33) {
      tasbeehPhase = "سبحان الله";
    } else if (tasbeehNumber >= 33 && tasbeehNumber < 66) {
      tasbeehPhase = "الحمد لله";
    } else if (tasbeehNumber >= 66 && tasbeehNumber < 99) {
      tasbeehPhase = "الله وأكبر";
    } else if (tasbeehNumber >= 99 && tasbeehNumber < 132) {
      tasbeehPhase = "لااله الا الله";
    } else if (tasbeehNumber >= 132 && tasbeehNumber < 165) {
      tasbeehPhase = "لاحول ولاقوة الا بالله";
    } else {
      tasbeehNumber = 0;
      tasbeehPhase = "سبحان الله";
    }
    return Center(
      child: Column(
        children: [
          const Spacer(
            flex: 5,
          ),
          // createAnimatedSebhaFull(
          //   turns: turns,
          //   onTapFunction: () {
          //     tasbeehNumber++;
          //     setState(() {
          //       turns += 1 / 33;
          //     });
          //   },
          // ),
          createAnimatedSebhaBody(
            context: context,
            turns: turns,
            onTapFunction: () {
              setState(() {
                tasbeehNumber++;
                turns += 1 / 33;
              });
            },
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const Spacer(
            flex: 1,
          ),
          TasbeehNumberWidget(tasbeehNumber: tasbeehNumber % 33),
          const Spacer(
            flex: 1,
          ),
          TasbeehPhaseWidget(tasbeehPhase: tasbeehPhase),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
