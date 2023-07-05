import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MediaQueryApp extends StatelessWidget {
  const MediaQueryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryAppScreen(),
    );
  }
}

class MediaQueryAppScreen extends StatelessWidget {
  const MediaQueryAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: Text('Media Query'),
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppBar,
      body: (isLandscape)
          ? Column(
              children: [
                Container(
                  height: bodyHeight * 0.5,
                  width: mediaQueryWidth,
                  color: Colors.amber,
                ),
                Container(
                  height: bodyHeight * 0.5,
                  // color: Colors.red,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 7 / 1,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: Container(
                          color: Color.fromARGB(100, Random().nextInt(255),
                              Random().nextInt(255), Random().nextInt(255)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  height: bodyHeight * 0.3,
                  width: mediaQueryWidth,
                  color: Colors.amber,
                ),
                Container(
                  height: bodyHeight * 0.7,
                  color: Colors.red,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(),
                        title: Text('Hallo'),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
