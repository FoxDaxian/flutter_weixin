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
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
      ],
    },
    {
      'name': '我是最后一个',
      'type': 1,
      'avator': 'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': 1546850692308},
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
                      new PageRouteBuilder(pageBuilder: (
                        BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                      ) {
                        return new ChatWindow(data: chats[index - 1]);
                      }),
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
