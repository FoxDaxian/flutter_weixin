import 'package:flutter/material.dart';

import './listItem.dart';

class List extends StatefulWidget {
  @override
  createState() {
    return new InnerState();
  }
}

class InnerState extends State<List> {
  final types = {
    1: 'person',
    2: 'group',
  };
  var chats = [
    {
      'name': '和你聊天的人是谁',
      'type': 1,
      'avator':
          'assets/images/avator.jpg',
      'msgs': [
        {'text': '你在干什么', 'time': '1546850692308'},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListItem(
          data: chats[index],
        );
      },
    );
  }
}
