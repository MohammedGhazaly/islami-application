import 'package:flutter/material.dart';

class HadithNameItem extends StatelessWidget {
  final String hadithNumber;
  final void Function() onTapFunction;
  const HadithNameItem({
    super.key,
    required this.hadithNumber,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: onTapFunction,
      child: Text(
        hadithNumber,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400,
            ),
      ),
    );
  }
}
