import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/shared/providers/my_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetLang extends StatelessWidget {
  const BottomSheetLang({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () => provider.changeLanguage('ar'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Icon(Icons.done,
                  color: provider.language == 'ar'
                      ? Theme.of(context).colorScheme.onSecondary
                      : Theme.of(context).primaryColor),
            ],
          ),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          color: Theme.of(context).colorScheme.secondary,
          thickness: 2,
        ),
        InkWell(
          onTap: () => provider.changeLanguage('en'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Icon(Icons.done,
                  color: provider.language == 'en'
                      ? Theme.of(context).colorScheme.onSecondary
                      : Theme.of(context).primaryColor),
            ],
          ),
        ),
      ]),
    );
  }
}
