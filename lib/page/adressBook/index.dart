import 'package:flutter/material.dart';

class AdressBook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AdressBookState();
  }
}

class _AdressBookState extends State<AdressBook> {
  final functionTag = [
    {
      'text': '新的朋友',
      'color': Color.fromARGB(255, 250, 157, 59),
      'icon': Icons.group_add
    },
    {
      'text': '群聊',
      'color': Color.fromARGB(255, 73, 174, 0),
      'icon': Icons.speaker_group
    },
    {
      'text': '标签',
      'color': Color.fromARGB(255, 79, 101, 179),
      'icon': Icons.label
    },
    {
      'text': '公众号',
      'color': Color.fromARGB(255, 52, 109, 203),
      'icon': Icons.person
    },
  ];
  var books = [
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'aaa1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'aaa2',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'aaa3',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'bbb1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'fff1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'nnn1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'sss1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'zzz1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'ccc1',
    },
    {
      'avator': 'assets/images/avator.jpg',
      'name': 'ggg1',
    },
  ];

  @override
  initState() {
    books.sort((a, b) => a['name'].compareTo(b['name']));
  }

  Widget buildList(index) {
    switch (index) {
      case 0:
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
        break;
      case 1:
      case 2:
      case 3:
      case 4:
        var i = index - 1;
        var labelData = functionTag[i];
        return new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            // 自己总结的标准写法：container里嵌套修饰widget
            new Container(
              margin: EdgeInsets.only(
                top: 6.0,
                bottom: 6.0,
                left: 10.0,
                right: 10.0,
              ),
              height: 45.0,
              width: 45.0,
              child: new DecoratedBox(
                decoration: new BoxDecoration(
                  color: labelData['color'],
                  borderRadius: BorderRadius.all(
                    Radius.circular(7.0),
                  ),
                ),
                child: new Icon(labelData['icon'], size: 35.0),
              ),
            ),
            new Expanded(
              child: new Container(
                height: 58.0,
                child: new DecoratedBox(
                  decoration: new BoxDecoration(
                    border: Border(
                      bottom: BorderSide(),
                    ),
                  ),
                  child: new Align(
                    alignment: FractionalOffset.centerLeft,
                    child: new Text(
                      labelData['text'],
                      style: new TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      default:
        var i = index - 5;
        var booksData = books[i];
        print(booksData['avator']);
        return new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(
                top: 6.0,
                bottom: 6.0,
                left: 10.0,
                right: 10.0,
              ),
              height: 45.0,
              width: 45.0,
              child: new DecoratedBox(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage(booksData['avator']),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7.0),
                  ),
                ),
              ),
            ),
            new Expanded(
              child: new Container(
                height: 58.0,
                child: new DecoratedBox(
                  decoration: new BoxDecoration(
                    border: Border(
                      bottom: BorderSide(),
                    ),
                  ),
                  child: new Align(
                    alignment: FractionalOffset.centerLeft,
                    child: new Text(
                      booksData['name'],
                      style: new TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final len = functionTag.length + books.length + 1;
    return new Flex(
      direction: Axis.vertical,
      children: <Widget>[
        new Expanded(
          child: new ListView.builder(
            itemCount: len,
            itemBuilder: (BuildContext context, int index) {
              return this.buildList(index);
            },
          ),
        ),
      ],
    );
  }
}
