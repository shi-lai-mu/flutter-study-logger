import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

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
              child: Text('open new route'*4),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return NewRoutes();
                  })
                );
              },
            ),
            CupertinoButton(
                color: CupertinoColors.activeBlue,
                child: Text("Press"),
                onPressed: () {}
            ),
            Text('哈哈哈哈哈 '),
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100.0,
              height: 100.0,
            ),
            Text('哈哈哈哈哈 '),
            Text('\uE914 \uE000 \uE90D',
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green
              ),
            ),
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
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('NAVIGATOR BACK'),
              textColor: Colors.red,
              onPressed: () async {
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TipRoute(
                        text: '我是提示xxxx',
                      );
                    }
                  )
                );
                print("路由返回值: $result");
              },
            )
          ],
        ),
      ),
    );
  }
}


class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TipRoute'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, '我是返回值'),
                child: Text('返回'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
