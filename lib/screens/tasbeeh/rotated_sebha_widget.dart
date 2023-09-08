import 'package:flutter/material.dart';

AnimatedRotation createAnimatedSebha(
    {required double turns, required Function() onTapFunction}) {
  return AnimatedRotation(
    turns: turns,
    duration: const Duration(seconds: 1),
    child: InkWell(
      onTap: onTapFunction,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Image.asset(
        "assets/images/sebha_head_body.png",
      ),
    ),
  );
}
