import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/settings/language_bottom_sheet.dart';
import 'package:provider/provider.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    var appConfig = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.language,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet(context);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  appConfig.appLanguage == "en"
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic,
                  style: appConfig.isDarkTheme()
                      ? Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).primaryColorDark,
                          )
                      : Theme.of(context).textTheme.titleSmall,
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        )
      ],
    );
  }

  void showLanguageBottomSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return const LanguageBottomSheet();
      },
    );
  }
}
