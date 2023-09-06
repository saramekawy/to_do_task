import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/screens/home_screen/home_screen.dart';
import 'package:git_test/screens/settings_screen.dart';

import '../themes/my_theme.dart';

class HomeLayout extends StatefulWidget {
  static const routeName = "Home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = [HomeScreen(), SettingsScreen()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 4),
            borderRadius: BorderRadius.circular(35)),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Icons"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: "Settings"),
            ],
          )),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 51, top: 59),
            height: 157,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Text(
              AppLocalizations.of(context)!.settings,
              style: MyTheme.lightMode.appBarTheme.titleTextStyle,
            ),
          ),
          Expanded(child: screens[index]),
        ],
      ),
    );
  }
}
