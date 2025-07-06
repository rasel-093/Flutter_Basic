import 'package:flutter/material.dart';
import '../../core/responsive_layout.dart';
import 'views/mobile_view.dart';
import 'views/tablet_view.dart';
import 'views/desktop_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive UI Example')),
      body: const ResponsiveLayout(
        mobileView: MobileView(),
        tabletView: TabletView(),
        desktopView: DesktopView(),
      ),
    );
  }
}
