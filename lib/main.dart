import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/extract_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final int selectedPage = 1;

  final Widget page = ListTilePage();

  // Widget page;
  // switch (selectedPage) {
  //   case 0:
  //     page = ListTilePage();
  //     break;
  //   default:
  //     throw UnimplementedError('no widget selected $selectedPage');
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Catalog'),
        ),
        body: page,
      ),
    );
  }
}
