import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:git_test/home_layout/home_layout.dart';
import 'package:git_test/screens/settings_screen.dart';
import 'package:git_test/shared/providers/my_provider.dart';
import 'package:git_test/shared/styles/themes/theming.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: const MyApplication()));
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      theme: MyTheme.lightMode,
      themeMode: provider.myTheme,
      darkTheme: MyTheme.darkMode,
      debugShowCheckedModeBanner: false,
      title: "Main",
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
      },
    );
  }
}
