import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('open new route'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return NewRoutes();
                  })
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class NewRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New route'),
      ),
      body: Center(
        child: Text('This is new route'),
      ),
    );
  }
}
