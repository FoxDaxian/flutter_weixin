import 'package:flutter/material.dart';

import './shortcut.dart';

class WxHome extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return new MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black, scaffoldBackgroundColor: Colors.white),
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('微信'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              tooltip: '常用操作',
              onPressed: () {
                //   需要一个有状态的部件
              },
            ),
          ],
        ),
        body: new Container(
          color: Colors.red[100],
          child: new ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: new Stack(
              children: <Widget>[
                new Shortcut()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
