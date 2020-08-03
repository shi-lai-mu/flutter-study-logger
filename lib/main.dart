import 'package:flutter/material.dart';
import './RandomWords.dart';
import './layout.dart';
import './routes.dart';
import './form.dart';
import './progress.dart';

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
//      home: new SwitchAndCheckBoxTestRoute(),
      routes: {
        "/": (context) => ProgressState(),
        "switchAndCheck": (context) => SwitchAndCheckBoxTestRoute(),
        "progress": (context) => ProgressState(),
        "new_page": (context) => HomePage(),
        "layout": (context) => Layout(),
        "randomWords": (context) => RandomWords(),
      },
    );
  }
}
