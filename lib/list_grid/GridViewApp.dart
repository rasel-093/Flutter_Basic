import 'package:flutter/material.dart';

class MyGridApp extends StatelessWidget {
  const MyGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewExampleScreen(),
    );
  }
}

class GridViewExampleScreen extends StatelessWidget {
  const GridViewExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // A list of 20 sample items
    final List<String> items = List.generate(
      20,
      (index) => 'Item ${index + 1}',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('GridView Example')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Number of columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1, // width/height ratio
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Center(
                child: Text(items[index], style: const TextStyle(fontSize: 18)),
              ),
            );
          },
        ),
      ),
    );
  }
}
