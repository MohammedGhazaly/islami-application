import 'package:flutter/material.dart';

class TasbeehNumberWidget extends StatelessWidget {
  final int tasbeehNumber;
  const TasbeehNumberWidget({
    super.key,
    required this.tasbeehNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Text(
          "$tasbeehNumber",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
      ),
    );
  }
}
