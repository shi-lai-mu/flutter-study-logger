import 'package:flutter/material.dart';
import './RandomWords.dart';
import './layout.dart';
import './routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter1',
      theme: new ThemeData(
        primaryColor: Colors.red,
      ),
      home: new HomePage(),
      routes: {
        "new_page": (context) => HomePage(),
        "layout": (context) => Layout(),
        "randomWords": (context) => RandomWords(),
      },
    );
  }
}
