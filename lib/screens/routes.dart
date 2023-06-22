import 'package:flutter/material.dart';

class RoutesApp extends StatelessWidget {
  const RoutesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoutesScreen(),
      initialRoute: RoutesScreen.routeName,
      routes: {
        RoutesScreen.routeName: (context) => RoutesScreen(),
        GaleryPage.routeName: (context) => GaleryPage(),
        PhotoPage.routeName: (context) => PhotoPage(),
      },
    );
  }
}

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes'),
      ),
      body: Center(
        child: Text('Hallo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GaleryPage.routeName);
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  static const routeName = '/galery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Gallery'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PhotoPage.routeName);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  static const routeName = '/photo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
      ),
      body: Center(
        child: Text('Photo'),
      ),
    );
  }
}
