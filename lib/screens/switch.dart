import 'package:flutter/material.dart';

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch'),
        ),
        body: Center(
          child: Column(
            children: [
              Switch.adaptive(
                activeColor: Colors.purple,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.black26,
                inactiveTrackColor: Colors.red,
                value: active,
                onChanged: (value) {
                  setState(() {
                    active = !active;
                  });

                  print(active);
                },
              ),
              // if (active) Text('data true') else Text('data false'),
              Text(
                active ? 'data true' : 'data false',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
