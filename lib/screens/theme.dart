import 'package:flutter/material.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeAppScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan App
        // visualDensity: VisualDensity(
        //   horizontal: 4,
        //   vertical: 4,
        // ),
        primarySwatch: Colors.amber,
        // primarySwatch: MaterialColor(
        //   0xFFF5E0C3,
        //   const <int, Color>{
        //     50: Color(0xFFF5E0C3),
        //     100: Color(0xFFF5E0C3),
        //     200: Color(0xFFF5E0C3),
        //     300: Color(0xFFF5E0C3),
        //     400: Color(0xFFF5E0C3),
        //     500: Color(0xFFF5E0C3),
        //     600: Color(0xFFF5E0C3),
        //     700: Color(0xFFF5E0C3),
        //     800: Color(0xFFF5E0C3),
        //     900: Color(0xFFF5E0C3),
        //   },
        // ),
        // primaryColor: Colors.red,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.green,
          ),
          bodyMedium: TextStyle(
            color: Colors.red,
          ),
          bodySmall: TextStyle(
            color: Colors.blue,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.yellow,
          titleTextStyle: TextStyle(
            color: Colors.green,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class ThemeAppScreen extends StatelessWidget {
  const ThemeAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.abc),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'This is Text 1',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 30),
                Text(
                  'This is Text 2',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 30),
                Text(
                  'This is Text 3',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('Button'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'This is Text 1',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 30),
                Text(
                  'This is Text 2',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('Button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
