import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              // autocorrect: false,
              // autofocus: true,
              // enableSuggestions: false,
              // enableInteractiveSelection: false,
              // keyboardType: TextInputType.emailAddress,
              // readOnly: false,
              // cursorColor: Colors.amber,
              // cursorHeight: 20,
              // cursorWidth: 10,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.words,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 4,
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 4,
                    color: Colors.green,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.person_add,
                  size: 25,
                ),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      size: 25,
                    )),
                // hintText: "Input fullname",
                labelText: "Fullname",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
