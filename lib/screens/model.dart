import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/model/product.dart';

class ModelApp extends StatelessWidget {
  const ModelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ModelAppScreen(),
    );
  }
}

class ModelAppScreen extends StatelessWidget {
  ModelAppScreen({super.key});

  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(
      100,
      (index) {
        return Product(
            imageUrl: 'https://picsum.photos/id/$index/300',
            name: faker.person.name(),
            description: faker.lorem.sentence(),
            price: 10000 + Random().nextInt(100000));
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Model'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return GridTile(
            footer: Container(
              height: 80,
              color: Colors.green.withOpacity(0.8),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    dummyData[index].name,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp ${dummyData[index].price}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    dummyData[index].description,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            child: Image.network(dummyData[index % 5].imageUrl),
          );
        },
      ),
    );
  }
}
