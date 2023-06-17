import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.amber,
            child: const Icon(Icons.menu),
          ),
          // leadingWidth: 100,
          title: Container(
            // color: Colors.red,
            // height: 20,
            child: const Text('App Name'),
            // width: 20,
            // child: const Icon(Icons.menu),
          ),
          actions: const [
            Icon(Icons.add_box_rounded),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
          ],
          flexibleSpace: Container(
            // height: 20,
            color: Colors.red,
          ),
          bottom: PreferredSize(
            preferredSize: Size(10, 30),
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              child: const Row(
                children: [
                  Text('Hallo this is bottom'),
                ],
              ),
            ),
          ),
          // titleSpacing: 0,
          // centerTitle: true,
        ),
      ),
    );
  }
}
