import 'dart:math';

import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  createState() => new FormPage();
}

class FormPage extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true;
  bool _checkboxSelect = true;
  TextEditingController _unameController = TextEditingController();
  TextEditingController _passwController = TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _unameController.addListener((){
      print(_unameController.text);
    });
    print('init');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Test'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Form'),
            Switch(
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Text('状态 $_switchSelected'),
            Checkbox(
              value: _checkboxSelect,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  _checkboxSelect = value;
                });
              },
            ),
            RaisedButton(
              child: Text('测试'),
              onPressed: () {
                _unameController.text="hello world!";
                _unameController.selection=TextSelection(
                    baseOffset: 2,
                    extentOffset: _unameController.text.length
                );
              },
            ),
//            TextField(
//              controller: _unameController,
//              onChanged: (value) {
//                print(_unameController.text);
//              },
//              decoration: InputDecoration(
//                labelText: '用户名',
//                hintText: '用户名或邮箱',
//                prefixIcon: Icon(Icons.person),
//              ),
//            ),
//            TextField(
//              autofocus: true,
//              decoration: InputDecoration(
//                labelText: '密码',
//                hintText: '您的登录密码',
//                prefixIcon: Icon(Icons.lock),
//              ),
//              obscureText: true,
//            ),
            Form(
              key: _formKey,
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    controller: _unameController,
                    decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名或邮箱',
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (v) {
                      return v.trim().length > 0 ? null : '用户名不能为空';
                    },
                  ),
                  TextFormField(
                    controller: _passwController,
                    decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '账号的密码',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    validator: (v) {
                      return v.trim().length > 0 ? null : '密码不能为空';
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('登录'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if ((_formKey.currentState as FormState).validate()) {
                                print('submit');
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}