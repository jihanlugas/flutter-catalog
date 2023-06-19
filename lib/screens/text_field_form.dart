import 'package:flutter/material.dart';

class TextFieldFormScreen extends StatefulWidget {
  const TextFieldFormScreen({super.key});

  @override
  State<TextFieldFormScreen> createState() => _TextFieldFormScreenState();
}

class _TextFieldFormScreenState extends State<TextFieldFormScreen> {
  final TextEditingController myController = TextEditingController();

  String hasil = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field Form'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    print("onChanged");
                    print(value);
                  },
                  onSubmitted: (value) {
                    print("onSubmitted");
                    setState(() {
                      hasil = value;
                    });
                  },
                  onEditingComplete: () {
                    print('onEditingComplete');
                    print(myController.text);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(hasil),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
