import 'package:flutter/material.dart';

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilderScreen(),
    );
  }
}

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text('Layout Builder'),
    );

    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
        appBar: myAppBar,
        body: Container(
          width: widthApp,
          height: heightBody * 0.7,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyContainer(widthApp),
              MyContainer(widthApp),
              MyContainer(widthApp),
            ],
          ),
        ));
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;

  const MyContainer(this.widthApp, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.25,
          height: constraints.maxHeight * 0.8,
          color: Colors.amber,
        );
      },
    );
  }
}
