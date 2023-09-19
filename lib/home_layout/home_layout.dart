import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/screens/home_screen/home_screen.dart';
import 'package:git_test/screens/settings/settings_screen.dart';
import 'package:git_test/screens/tasks/add_task_bottom_sheet.dart';

import '../shared/styles/themes/theming.dart';

class HomeLayout extends StatefulWidget {
  static const routeName = "Home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = [HomeScreen(), SettingsScreen()];
  List<String> pageNames = ["Home", "Settings"];

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
        onPressed: () {
          showAddTask();
        },
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
            selectedItemColor: Theme.of(context).colorScheme.secondary,
            unselectedItemColor: Theme.of(context).colorScheme.surface,
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
              padding: const EdgeInsets.only(left: 51, top: 59, right: 51),
              height: 157,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: index == 0
                  ? Text(AppLocalizations.of(context)!.homePage,
                      style: MyTheme.lightMode.appBarTheme.titleTextStyle)
                  : Text(AppLocalizations.of(context)!.settings,
                      style: MyTheme.lightMode.appBarTheme.titleTextStyle)),
          Expanded(child: screens[index]),
        ],
      ),
    );
  }

  Future showAddTask() {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      context: context,
      builder: (context) => const AddTask(),
    );
  }
}
