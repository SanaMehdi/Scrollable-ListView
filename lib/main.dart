import 'package:flutter/material.dart';

class ScrollableListView extends StatelessWidget {
  // List of items to display
  final List<Map<String, dynamic>> items = List.generate(
    20,
        (index) => {
      'title': 'Item ${index + 1}',
      'subtitle': 'Subtitle for item ${index + 1}',
      'icon': Icons.shopping_bag,
    },
  );

  ScrollableListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable ListView'),
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: Icon(
                items[index]['icon'],
                color: Colors.blue[800],
              ),
              title: Text(
                items[index]['title'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(items[index]['subtitle']),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                print('Tapped on ${items[index]['title']}');
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scrollable ListView',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: ScrollableListView(),
    );
  }
}
