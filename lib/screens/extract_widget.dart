import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_item.dart';

class ListTilePage extends StatelessWidget {
  ListTilePage({
    super.key,
  });

  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) => ChatItem(
        photoUrl: "https://picsum.photos/id/$index/200/300",
        name: faker.person.name(),
        message: faker.lorem.sentence(),
      ),
    );
  }
}
