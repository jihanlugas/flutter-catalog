import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  TabBarScreen({super.key});

  List<Tab> myTab = [
    const Tab(
      icon: Icon(Icons.group_sharp),
    ),
    const Tab(
      text: 'Chats',
    ),
    const Tab(
      text: 'Status',
    ),
    const Tab(
      text: 'Calls',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            flexibleSpace: Container(color: Colors.green),
            bottom: TabBar(
              // indicatorColor: Colors.white,
              // indicatorWeight: 2,
              // indicatorPadding: EdgeInsets.all(8),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              indicator: const BoxDecoration(
                // color: Colors.amber,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
              tabs: myTab,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  'Comunity Screen',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  'Chats Screen',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  'Status Screen',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  'Calls Screen',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
