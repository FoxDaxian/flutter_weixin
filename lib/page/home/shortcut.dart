import 'package:flutter/material.dart';

import 'dart:math';

class Shortcut extends StatefulWidget {
  @override
  createState() {
    return new _InnerState();
  }
}

class _InnerState extends State<Shortcut> {
  Widget createFlexStruct(
      {@required String text, @required Widget icon, bool hasBorder = true}) {
    return new Container(
      height: 35,
      child: new DecoratedBox(
        decoration: new BoxDecoration(
          border: new Border(
            bottom: hasBorder
                ? BorderSide(
                    width: 0.7,
                    color: Colors.white,
                  )
                : BorderSide.none,
          ),
        ),
        child: new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: icon,
            ),
            new Expanded(
              flex: 3,
              child: new Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  bottom: 5,
                ),
                child: new Text(
                  '$text',
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var num = 4;
    // 创建一个长度为4的数组/list
    var length = new List<int>.generate(num, (index) => index);
    // 声明结构体list
    var lists = <Container>[];
    length.forEach((index) {
      var text;
      var icon;
      var hasBorder = true;
      switch (index) {
        case 0:
          text = '发起群聊';
          icon = new Icon(
            Icons.chat_bubble,
            color: Colors.white,
          );
          break;
        case 1:
          text = '添加朋友';
          icon = new Icon(
            Icons.person_add,
            color: Colors.white,
          );
          break;
        case 2:
          text = '扫一扫';
          icon = new Icon(
            Icons.scanner,
            color: Colors.white,
          );
          break;
        case 3:
          text = '收付款';
          icon = new Icon(
            Icons.payment,
            color: Colors.white,
          );
          hasBorder = false;
          break;
      }
      lists.add(
        createFlexStruct(
          text: text,
          icon: icon,
          hasBorder: hasBorder,
        ),
      );
    });

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
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 5.0,
                ),
                child: new Column(
                  children: lists,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
