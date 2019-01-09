import 'package:flutter/material.dart';

import './listItem.dart';
import './chatWindow.dart';

class List extends StatefulWidget {
  @override
  createState() {
    return new _InnerState();
  }
}

class _InnerState extends State<List> {
  final types = {
    1: 'person',
    2: 'group',
  };
  var chats = [
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么1', 'time': 1546850692308, 'belong': 0},
        {'text': '你在干什么2', 'time': 1546860692308, 'belong': 0},
        {'text': '你在干什么3', 'time': 1546870692308, 'belong': 1},
        {'text': '你在干什么4', 'time': 1546880692308, 'belong': 0},
        {'text': '你在干什么5', 'time': 1546890692308, 'belong': 1},
        {'text': '你在干什么6', 'time': 1546900692308, 'belong': 0},
        {'text': '你在干什么7', 'time': 1546910692308, 'belong': 0},
        {'text': '你在干什么8', 'time': 1546920692308, 'belong': 1},
        {'text': '你在干什么9', 'time': 1546930692308, 'belong': 0},
        {'text': '你在干什么10', 'time': 1546940692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
    {
      'name': '我是最后一个',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'masterAvator': 'assets/images/masterAvator.png',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308, 'belong': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // 还得加个expanded才能撑开内容宽高，但是expanded只能放在类flex的widget中
    return new Flex(
      direction: Axis.vertical,
      children: <Widget>[
        new Expanded(
          child: new ListView.builder(
            itemCount: chats.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return new Padding(
                  padding: EdgeInsets.only(
                    bottom: 5.0,
                    left: 2.0,
                    right: 2.0,
                  ),
                  child: new TextField(
                    decoration: new InputDecoration(
                      suffixIcon: new Icon(Icons.search),
                    ),
                  ),
                );
              } else {
                return new ListItem(
                  data: chats[index - 1],
                  index: index - 1,
                  onActive: () {
                    Navigator.of(context).push(
                      new PageRouteBuilder(
                        pageBuilder: (
                          BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                        ) {
                          return new ChatWindow(data: chats[index - 1]);
                        },
                        // 利用transitionsBuilder可以做路由跳转动画
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return SlideTransition(
                            position: new Tween<Offset>(
                              begin: Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: new SlideTransition(
                              position: new Tween<Offset>(
                                begin: Offset.zero,
                                end: const Offset(1.0, 0.0),
                              ).animate(secondaryAnimation),
                              child: child,
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
