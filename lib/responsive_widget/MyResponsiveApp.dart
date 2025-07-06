import 'package:flutter/material.dart';
import 'package:flutter_basic/responsive_widget/features/home/home_page.dart';

class MyResponsiveApp extends StatelessWidget {
  const MyResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
