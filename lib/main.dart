import 'package:flutter/material.dart';
import 'package:flutter_basic/list_grid/GridViewApp.dart';
import 'package:flutter_basic/responsive_widget/MyResponsiveApp.dart';
import 'package:flutter_basic/statefulwidget/StatefulWidget.dart';
import 'package:flutter_basic/stateless_widget/StatelessWidget.dart';
import 'package:flutter_basic/styled_widget/StyledWidget.dart';
import 'package:flutter_basic/material_widget/MaterialWidget.dart';
import 'package:flutter_basic/widget/cupertino_widget/CupertinoWidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //runApp(const MyResponsiveApp());
  //runApp(const StatelesswidgetApp());
  //runApp(const StatefulWidgetApp());
  //runApp(const StyledWidgetApp());
  //runApp(const MaterialShowcaseApp());
  //runApp(const CupertinoAppDemo());
  runApp(const MyGridApp());
}
