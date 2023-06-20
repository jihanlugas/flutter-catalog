import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissableScreen extends StatelessWidget {
  const DismissableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DismissableScreenPage(),
    );
  }
}

class DismissableScreenPage extends StatelessWidget {
  DismissableScreenPage({
    super.key,
  });

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissable'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.delete,
                size: 25,
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(child: Text('${index + 1}')),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
            onDismissed: (direction) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Data Deleted'),
                  );
                },
              );
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Delete'),
                    content: Text('Are you sure to delete?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text('No'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text('Yes'),
                      ),
                    ],
                  );
                },
              ).then((value) => value);
            },
          );
        },
      ),
    );
  }
}
