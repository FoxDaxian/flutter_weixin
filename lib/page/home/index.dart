import 'package:flutter/material.dart';

import './navigationBar.dart';
import './home.dart';
// 通讯录
import '../adressBook/index.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _InnerState();
  }
}

class _InnerState extends State<Index> {
  int navigationBarIndex = 0;
  bool canShowShourcut = false;

  void toggleShourcut() {
    // 这块切换状态有问题，需要重构，先这样满足一下自己吧。。。
    setState(() {
      this.canShowShourcut = !this.canShowShourcut;
    });
  }

  changeBody(index) {
    switch (index) {
      case 1:
        return new AdressBook();
        break;
      case 2:
        break;
      case 3:
        break;
      default:
        return new WxHome(
          canShowShourcut: this.canShowShourcut,
          toggleShourcut: () {
            this.toggleShourcut();
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    var title = ['微信', '通讯录', '发现', '我'];
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(title[navigationBarIndex]),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              tooltip: '常用操作',
              onPressed: () {
                // 需要一个有状态的部件
                this.toggleShourcut();
              },
            ),
          ],
        ),
        body: this.changeBody(this.navigationBarIndex),
        bottomNavigationBar: new MyNavgationBar(
          navigationBarIndex: this.navigationBarIndex,
          canShowShourcut: this.canShowShourcut,
          toggleShourcut: () {
            this.toggleShourcut();
          },
          onIndexChange: (index) {
            setState(() {
              this.navigationBarIndex = index;
            });
          },
        ),
      ),
    );
  }
}
