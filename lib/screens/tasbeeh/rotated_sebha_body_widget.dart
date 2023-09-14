import 'package:flutter/material.dart';

Widget createAnimatedSebhaBody(
    {required double turns, required Function() onTapFunction}) {
  return InkWell(
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: onTapFunction,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedRotation(
            turns: turns,
            duration: const Duration(milliseconds: 500),
            child: Image.asset("assets/images/sebha_body.png")),
        Positioned(
          top: -80,
          right: 45,
          child: Image.asset("assets/images/sebha_head.png"),
        ),
      ],
    ),
  );
}
