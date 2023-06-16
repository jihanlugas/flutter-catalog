import 'package:flutter/material.dart';

class StatefullScren extends StatefulWidget {
  const StatefullScren({super.key});

  @override
  State<StatefullScren> createState() => _StatefullScrenState();
}

class _StatefullScrenState extends State<StatefullScren> {
  @override
  Widget build(BuildContext context) {
    int counter = 1;
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
                    if (counter <= 1) {
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
