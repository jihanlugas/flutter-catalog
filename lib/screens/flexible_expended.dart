import 'package:flutter/material.dart';

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlexibleExpandedScreen(),
    );
  }
}

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlexibleExpanded'),
      ),
      body: Row(
        children: [
          Flexible(
            // fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.amber,
              // child: Text('Text Yang Panjang'),
            ),
          ),
          Flexible(
            // fit: FlexFit.tight,
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.red,
              // child: Text('Text Sedang'),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              height: 100,
              color: Colors.green,
              // child: Text('Pendek'),
            ),
          ),
        ],
      ),
    );
  }
}
