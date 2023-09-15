import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

Widget createAnimatedSebhaBody(
    {required double turns,
    required Function() onTapFunction,
    required BuildContext context}) {
  var appConfig = Provider.of<AppConfigProvider>(context);

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
          child: Image.asset(appConfig.isDarkTheme()
              ? "assets/images/body_sebha_dark.png"
              : "assets/images/sebha_body.png"),
        ),
        Positioned(
            top: -80,
            right: 45,
            //
            child: Image.asset(appConfig.isDarkTheme()
                ? "assets/images/head_sebha_dark.png"
                : "assets/images/sebha_head.png")),
      ],
    ),
  );
}
