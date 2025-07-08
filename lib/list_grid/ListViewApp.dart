import 'package:flutter/material.dart';

class MyListViewApp extends StatelessWidget {
  const MyListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExampleScreen(),
    );
  }
}

class ListViewExampleScreen extends StatelessWidget {
  const ListViewExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list of items
    final List<String> items = List.generate(
      20,
      (index) => "Item ${index + 1}",
    );

    return Scaffold(
      appBar: AppBar(title: const Text("ListView with ListTile")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.label),
            title: Text(items[index]),
            subtitle: Text("Subtitle for ${items[index]}"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Action when tapped
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Tapped ${items[index]}")));
            },
          );
        },
      ),
    );
  }
}
