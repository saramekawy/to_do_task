import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "Settings";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 38, top: 124),
            child: Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodyLarge,
            )),
        InkWell(
          child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 56, top: 22, right: 37),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.english,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary)),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: Theme.of(context).textTheme.bodyMedium?.fontSize,
                    color: Theme.of(context).colorScheme.secondary,
                  )
                ],
              )),
        ),
        Container(
            padding: const EdgeInsets.only(left: 38, top: 22),
            child: Text(
              AppLocalizations.of(context)!.mode,
              style: Theme.of(context)!.textTheme.bodyLarge,
            )),
        InkWell(
          child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 56, top: 22, right: 37),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.lightMode,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary)),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: Theme.of(context).textTheme.bodyMedium?.fontSize,
                    color: Theme.of(context).colorScheme.secondary,
                  )
                ],
              )),
        )
      ],
    );
  }
}
