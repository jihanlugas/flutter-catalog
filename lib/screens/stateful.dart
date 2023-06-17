import 'package:flutter/material.dart';

class StatefullScreen extends StatefulWidget {
  const StatefullScreen({super.key});

  @override
  State<StatefullScreen> createState() => _StatefullScreenState();
}

class _StatefullScreenState extends State<StatefullScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Statefull')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 20 + double.parse(counter.toString()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (counter > 1) {
                      setState(() {
                        counter--;
                      });
                    }
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
