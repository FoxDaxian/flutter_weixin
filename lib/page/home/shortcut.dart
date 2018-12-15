import 'package:flutter/material.dart';

import 'dart:math';

class Shortcut extends StatefulWidget {
  @override
  createState() {
    return new InnerState();
  }
}
// 怎么使用这个泛型，有个图片可以参考一下
class Struct {
  final String text;
  final Widget icon;
  final Map res;
  Struct({this.text, this.icon}) : res = {text: text, icon: icon};
}

class InnerState extends State<Shortcut> {
  var lists = <Struct>[
    new Struct(
      text: '发起群聊',
      icon: new Icon(
        Icons.chat_bubble,
        color: Colors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Positioned(
      right: 10.0,
      top: 10.0,
      child: new Container(
        width: 130.0,
        child: new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.topRight,
              child: new Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: SizedBox(
                  width: 15.0,
                  height: 5.0,
                  child: ClipRect(
                    child: OverflowBox(
                      maxWidth: 15.0,
                      maxHeight: 10.0,
                      child: Transform.translate(
                        offset: Offset(.0, 5.0),
                        child: Transform.rotate(
                          angle: pi / 4,
                          child: Container(
                            width: 15.0,
                            height: 10.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              color: Colors.black,
              child: new Padding(
                padding: EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    new Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        new Expanded(
                          flex: 1,
                          child: new Icon(
                            Icons.chat_bubble,
                            color: Colors.white,
                          ),
                        ),
                        new Expanded(
                          flex: 3,
                          child: new Center(
                            child: new Text(
                              '发起群聊',
                              style: new TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
