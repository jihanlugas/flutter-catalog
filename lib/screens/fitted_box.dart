import 'package:flutter/material.dart';

class FittedBoxApp extends StatelessWidget {
  const FittedBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FittedBoxScreen(),
    );
  }
}

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitted Box'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          // height: 100,
          child: FittedBox(
            alignment: Alignment.topLeft,
            fit: BoxFit.cover,
            // child: Text(
            //   "Hallo",
            //   style: TextStyle(
            //     fontSize: 35,
            //     color: Colors.white,
            //   ),
            // ),
            child: Image.network('https://picsum.photos/200'),
          ),
        ),
      ),
    );
  }
}
