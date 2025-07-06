import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.tablet_mac, size: 80),
          SizedBox(width: 20),
          Text('This is Tablet View'),
        ],
      ),
    );
  }
}
