import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../shared/providers/my_provider.dart';

class BottomSheeTheme extends StatelessWidget {
  const BottomSheeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () => provider.changeTheme(ThemeMode.light),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.lightMode,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Icon(Icons.done,
                  color: provider.myTheme == ThemeMode.light
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
          onTap: () => provider.changeTheme(ThemeMode.dark),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.darkMode,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Icon(Icons.done,
                  color: provider.myTheme == ThemeMode.dark
                      ? Theme.of(context).colorScheme.onSecondary
                      : Theme.of(context).primaryColor),
            ],
          ),
        ),
      ]),
    );
  }
}
