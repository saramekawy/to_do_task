import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  DateTime selectedDate = DateTime.now();
  DateTime selectDate = DateTime.now();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 21, left: 32, right: 32),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                AppLocalizations.of(context)!.addNewTask,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value != null || value!.length < 4) {
                  return "Please enter at least a 4 char title";
                }
                return null;
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary)),
                labelText: AppLocalizations.of(context)!.addNewTask,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary)),
                labelText: AppLocalizations.of(context)!.taskDetails,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12, bottom: 5),
              child: Text(
                AppLocalizations.of(context)!.selectTime,
                style: GoogleFonts.poppins(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                _selectDate(context);
              },
              child: Center(
                child: Text(
                  DateFormat('yyyy-MM-dd').format(selectDate),
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 18),
                ),
              ),
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 3),
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.white30),
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(35)),
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 45,
              ),
            ))
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  onSurface: Colors.black,
                ),
                textButtonTheme: TextButtonThemeData(
                    // style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,)
                    )),
            child: child!);
      },
      context: context,
      initialDate: selectDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (selected == null) {
      selectedDate = DateTime.now();
    } else {
      selectedDate = selected;
      selectDate = selectedDate;
    }
    setState(() {});
  }
}
