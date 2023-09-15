import 'package:flutter/material.dart';
import 'package:islami_app/constants.dart';

class TasbeehPhaseWidget extends StatelessWidget {
  final String tasbeehPhase;
  const TasbeehPhaseWidget({
    super.key,
    required this.tasbeehPhase,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        tasbeehPhase,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              // في حالة الدارك هنخليها كده
              color: kDarkColor,
            ),
      ),
    );
  }
}
