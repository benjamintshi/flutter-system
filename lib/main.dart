import 'package:flutter/material.dart';
import 'package:flutter_system/page/guide.dart';

/// App Entry
void main() => runApp(MyApp());

/// App Entry
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GuidePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
