import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationScreenPageSatu(),
    );
  }
}

class NavigationScreenPageSatu extends StatelessWidget {
  const NavigationScreenPageSatu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NavigationScreenPageDua();
              },
            ),
          );
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}

class NavigationScreenPageDua extends StatelessWidget {
  const NavigationScreenPageDua({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
