import 'package:flutter/material.dart';

class DatePickerApp extends StatelessWidget {
  const DatePickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePickerScreen(),
    );
  }
}

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate.toString(),
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                  // initialEntryMode: DatePickerEntryMode.calendar,
                  // initialDatePickerMode: DatePickerMode.day,
                  // selectableDayPredicate: (day) {
                  //   if ((day.isAfter(
                  //         DateTime.now().subtract(
                  //           Duration(
                  //             days: 5,
                  //           ),
                  //         ),
                  //       )) &&
                  //       (day.isBefore(
                  //         DateTime.now().add(
                  //           Duration(
                  //             days: 2,
                  //           ),
                  //         ),
                  //       ))) {
                  //     return true;
                  //   }
                  //   return false;
                  // },
                  helpText: 'Help Text',
                  cancelText: 'Cancel Text',
                  confirmText: 'Confirm Text',
                  fieldHintText: 'Field Hint Text',
                  fieldLabelText: 'Field Label Text',
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData.dark(),
                      child: child!,
                    );
                  },
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                });
              },
              child: Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
