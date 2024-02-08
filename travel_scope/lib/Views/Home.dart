import 'package:flutter/material.dart';
import 'package:travel_scope/Views/game.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Add your profile icon onPressed action here
            },
          ),
          IconButton(
            // Add this IconButton
            icon: Icon(Icons.add), // You can change the icon as needed
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Game()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Center(
                      child: Text('Box 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Center(
                      child: Text('Box 2'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Center(
                      child: Text('Box 3'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Center(
                      child: Text('Box 4'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
