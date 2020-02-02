import 'package:bloc_demo/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}
