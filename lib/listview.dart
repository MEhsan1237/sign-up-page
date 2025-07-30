import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final List<String> items = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Mango',
    'Watermelon',
  ];
  ListViewExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text(items[index]),
              subtitle: Text('This is item number ${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
