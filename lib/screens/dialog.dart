import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DialogScreenPage(),
    );
  }
}

class DialogScreenPage extends StatefulWidget {
  const DialogScreenPage({super.key});

  @override
  State<DialogScreenPage> createState() => _DialogScreenPageState();
}

class _DialogScreenPageState extends State<DialogScreenPage> {
  String data = 'Belum Klik';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Hallo'),
                content: Text('Are you sure to delete?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = 'No';
                      });
                      Navigator.of(context).pop('No');
                    },
                    child: Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = 'Yes';
                      });
                      Navigator.of(context).pop('Yes');
                    },
                    child: Text('Yes'),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
