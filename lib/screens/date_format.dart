import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatScreen extends StatelessWidget {
  const DateFormatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date Format'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat.yMMMMEEEEd().add_jm().format(DateTime.now()),
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                DateTime(2001).toString(),
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
