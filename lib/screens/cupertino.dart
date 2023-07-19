import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class CupertinoApp extends StatelessWidget {
  const CupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoScreen(),
    );
  }
}

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino'),
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: () {
          //   showDialog(
          //     context: context,
          //     builder: (context) {
          //       return Platform.isIOS
          //           ? CupertinoAlertDialog(
          //               title: Text('Delte Item'),
          //               content: Text('Are yout sure to delete this item?'),
          //               actions: [
          //                 TextButton(
          //                   onPressed: () {},
          //                   child: Text('No'),
          //                 ),
          //                 TextButton(
          //                   onPressed: () {},
          //                   child: Text('Yes'),
          //                 ),
          //               ],
          //             )
          //           : AlertDialog(
          //               title: Text('Delte Item'),
          //               content: Text('Are yout sure to delete this item?'),
          //               actions: [
          //                 TextButton(
          //                   onPressed: () {},
          //                   child: Text('No'),
          //                 ),
          //                 TextButton(
          //                   onPressed: () {},
          //                   child: Text('Yes'),
          //                 ),
          //               ],
          //             );
          //     },
          //   );
          // },
          onPressed: () {
            Platform.isIOS
                ? showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: Colors.white,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (value) {
                            print(value);
                          },
                        ),
                      );
                    },
                  )
                : showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1980),
                    lastDate: DateTime(2050),
                  );
          },
          child: Text('Alert'),
        ),
      ),
    );
  }
}
