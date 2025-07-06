import 'package:flutter/material.dart';

//Use case:	Static UI, presentation
// Cannot use setState() to change the UI
// All data must be passed from parent
// It simply renders based on the data provided to it and doesn't rebuild unless its parent widget rebuilds with new data.

// Main app widget (Stateless)
class StatelesswidgetApp extends StatelessWidget {
  const StatelesswidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatelessWidget Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

// Custom stateless widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessWidget Example')),
      body: const Center(child: GreetingWidget(name: 'Rasel')),
    );
  }
}

//custom stateless widget
class GreetingWidget extends StatelessWidget {
  final String name;

  const GreetingWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 22, 123, 170), // Background color here
      padding: const EdgeInsets.all(16), // Optional padding
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const SizedBox(height: 20),
          Text(
            'Hello, $name!',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            ),
          ),
          //const SizedBox(height: 10),
          const Text(
            'This is a simple StatelessWidget example.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
