import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class TasbeehNumberWidget extends StatelessWidget {
  final int tasbeehNumber;
  const TasbeehNumberWidget({
    super.key,
    required this.tasbeehNumber,
  });

  @override
  Widget build(BuildContext context) {
    var appConfig = Provider.of<AppConfigProvider>(context);

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          //Theme.of(context).primaryColor //  Light Mode
          //Theme.of(context).primaryColorDark // Dark Mode
          color: appConfig.isDarkTheme()
              ? Theme.of(context).primaryColorDark
              : Theme.of(context).primaryColor,
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
