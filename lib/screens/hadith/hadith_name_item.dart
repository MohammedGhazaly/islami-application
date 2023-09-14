import 'package:flutter/material.dart';

class HadithNameItem extends StatelessWidget {
  final String suraName;
  final void Function() onTapFunction;
  const HadithNameItem({
    super.key,
    required this.suraName,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: onTapFunction,
      child: Text(
        suraName,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400,
            ),
      ),
    );
  }
}
