import 'dart:math';

import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({super.key});

  final List<Container> myList = List.generate(
    90,
    (index) {
      return Container(
        color: Color.fromARGB(
          255,
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Screen'),
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            // childAspectRatio: 4 / 3,
          ),
          children: myList,
        ),
      ),
    );
  }
}
