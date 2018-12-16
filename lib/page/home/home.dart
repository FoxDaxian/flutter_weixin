import 'package:flutter/material.dart';

import './shortcut.dart';

class WxHome extends StatefulWidget {
  @override
  createState() {
    return new InnerState();
  }
}

class InnerState extends State<WxHome> {
  bool canShowShourcut = false;

  void toggleShourcut() {
    // 这块切换状态有问题，需要重构，先这样满足一下自己吧。。。
    setState(() {
      this.canShowShourcut = !this.canShowShourcut;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                this.toggleShourcut();
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
                this.canShowShourcut
                    ? new Shortcut()
                    : new Container(height: 0.0, width: 0.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
