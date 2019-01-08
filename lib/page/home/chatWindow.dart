import 'package:flutter/material.dart';

class ChatWindow extends StatefulWidget {
  final data;
  ChatWindow({this.data});

  @override
  State<StatefulWidget> createState() {
    return new _InnerState();
  }
}

class _InnerState extends State<ChatWindow> {
  @override
  Widget build(BuildContext context) {
    // 从这里继续写，包括路由跳转动画之类的
    // 原来可以通过widget来获取 去看下这个：https://www.jianshu.com/p/945c7ad4c058
    return new MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(widget.data['name']),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              tooltip: '常用操作',
              onPressed: () {},
            ),
          ],
        ),
        body: new Text('123'),
      ),
    );
  }
}
