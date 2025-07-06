// styled_widget is an actual Flutter package that lets you write styling like a chain of methods
//"styled widget" simply means a widget that has custom visual properties like:
//Color Padding Margin Font style Border Shadow Gradient, etc.
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class StyledWidgetApp extends StatelessWidget {
  const StyledWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styled Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StyledWidgetExample(),
    );
  }
}

class StyledWidgetExample extends StatelessWidget {
  const StyledWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Styled Widget Example"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.yellow,
      body:
          Text('Styled Widget')
              .fontSize(24)
              .textColor(Colors.white)
              .borderRadius(all: 12)
              .padding(all: 16)
              .elevation(10)
              .backgroundColor(Colors.blueAccent)
              .alignment(Alignment.center)
              .gestures(onTap: () => print("Tapped"))
              // .parent() // required when using gestures
              .center(),
    );
  }
}
