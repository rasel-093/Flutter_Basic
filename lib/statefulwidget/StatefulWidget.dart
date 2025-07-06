//Use case
//Counters, toggles, switches , Forms (text input, validation) Loading indicators, Animations, PageViews, Tabs
import 'package:flutter/material.dart';

class StatefulWidgetApp extends StatelessWidget {
  const StatefulWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Stateful Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CounterPage(title: 'Stateful Widget Home Page'),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        foregroundColor: const Color.fromARGB(255, 245, 208, 99),
        backgroundColor: const Color.fromARGB(255, 245, 208, 99),
        child: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 12, 11, 4),
          size: 30.0,
          semanticLabel: "Increment Counter",
        ),
      ),
    );
  }
}
