import 'package:flutter/material.dart';
import 'package:tab_bar/tabBar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Controller',
      theme: ThemeData.dark(),
      home: TabsController(),
    );
  }
}
