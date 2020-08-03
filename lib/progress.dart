import 'package:flutter/material.dart';

class ProgressState extends StatefulWidget {
  @override
  createState() => new ProgressPage();
}

class ProgressPage extends State<ProgressState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Test1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Progress'),
            LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.redAccent),
              value: .5,
            ),
            CircularProgressIndicator(),
            SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
