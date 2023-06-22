import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerScreen(),
    );
  }
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 150,
              alignment: Alignment.bottomLeft,
              color: Colors.red,
              child: Text(
                'Hallo Drawer',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageSatu();
                    },
                  ),
                );
              },
              leading: Icon(
                Icons.home,
                size: 28,
              ),
              title: Text('Page Satu'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageDua();
                    },
                  ),
                );
              },
              leading: Icon(
                Icons.settings,
                size: 28,
              ),
              title: Text('Page Dua'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Drawer'),
      ),
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 150,
              alignment: Alignment.bottomLeft,
              color: Colors.red,
              child: Text(
                'Hallo Drawer',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageSatu();
                    },
                  ),
                );
              },
              leading: Icon(
                Icons.home,
                size: 28,
              ),
              title: Text('Page Satu'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageDua();
                    },
                  ),
                );
              },
              leading: Icon(
                Icons.settings,
                size: 28,
              ),
              title: Text('Page Dua'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Page Satu'),
      ),
    );
  }
}

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: 150,
              alignment: Alignment.bottomLeft,
              color: Colors.red,
              child: Text(
                'Hallo Drawer',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageSatu();
                    },
                  ),
                );
              },
              leading: Icon(
                Icons.home,
                size: 28,
              ),
              title: Text('Page Satu'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageDua();
                    },
                  ),
                );
              },
              leading: Icon(
                Icons.settings,
                size: 28,
              ),
              title: Text('Page Dua'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Page Dua'),
      ),
    );
  }
}
