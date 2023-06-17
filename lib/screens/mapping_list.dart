import 'package:flutter/material.dart';

class MappingListScreen extends StatelessWidget {
  MappingListScreen({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      'name': 'Monkey D. Luffy',
      'age': 22,
      'favColor': [
        'Red',
        'Yellow',
        'Blue',
        'Red',
        'Yellow',
        'Blue',
        'Red',
        'Yellow',
        'Blue',
        'Red',
        'Yellow',
        'Blue',
      ]
    },
    {
      'name': 'Roronoa Zorro',
      'age': 23,
      'favColor': ['Green', 'Blcak', 'White']
    },
    {
      'name': 'Nami',
      'age': 21,
      'favColor': ['White', 'Yellow', 'Orange']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mapping List'),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFav = data['favColor'];
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name: ${data['name']}'),
                          Text('Age: ${data['age']}'),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFav.map((color) {
                        return Container(
                          color: Colors.amber,
                          margin: const EdgeInsetsDirectional.only(
                              end: 8, top: 8, bottom: 8),
                          padding: const EdgeInsets.all(8),
                          child: Text(color),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        // body: ListView(children: [
        //   for (var data in myList)
        //     Card(
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               const CircleAvatar(),
        //               Column(
        //                 children: [
        //                   Text('Name: ${data['name']}'),
        //                   Text('Age: ${data['age']}'),
        //                 ],
        //               )
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               Container(
        //                 child: Text('Red'),
        //               ),
        //               Container(
        //                 child: Text('Green'),
        //               ),
        //               Container(
        //                 child: Text('Blue'),
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        // ]),
      ),
    );
  }
}
