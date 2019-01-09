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
    // 原来可以通过widget来获取
    return new MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
      home: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(widget.data['name']),
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop('这个是要返回给上一个页面的数据');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new GestureDetector(
                child: new Container(
                  color: Colors.grey[100],
                  child: ListView.builder(
                    itemCount: widget.data['msgs'].length,
                    itemBuilder: (BuildContext context, int index) {
                      return widget.data['msgs'][index]['belong'] == 0
                          ? new Container(
                              margin: EdgeInsets.only(bottom: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Container(
                                    height: 65.0,
                                    width: 65.0,
                                    child: new Padding(
                                      padding: EdgeInsets.all(10.0),
                                      // 修饰器 decoratedbox 可以设置背景图片 圆角那些东西，可以联想成设置图片的非img方式
                                      child: new DecoratedBox(
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                '${widget.data['avator']}'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  new DecoratedBox(
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                    child: new Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: new Center(
                                        child: new Text(
                                          '${widget.data['msgs'][index]['text']}',
                                          style: new TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : new Container(
                              margin: EdgeInsets.only(bottom: 4.0),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  new DecoratedBox(
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.0),
                                      ),
                                    ),
                                    child: new Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: new Center(
                                        child: new Text(
                                          '${widget.data['msgs'][index]['text']}',
                                          style: new TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  new Container(
                                    height: 65.0,
                                    width: 65.0,
                                    child: new Padding(
                                      padding: EdgeInsets.all(10.0),
                                      // 修饰器 decoratedbox 可以设置背景图片 圆角那些东西，可以联想成设置图片的非img方式
                                      child: new DecoratedBox(
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                '${widget.data['masterAvator']}'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                    },
                  ),
                ),
              ),
            ),
            new DecoratedBox(
              decoration: new BoxDecoration(
                border: new Border(
                  top: new BorderSide(),
                ),
              ),
              child: new Container(
                color: Colors.grey[200],
                child: new Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    left: 5.0,
                    right: 5.0,
                  ),
                  child: new Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      new DecoratedBox(
                        decoration: new BoxDecoration(
                          border: Border.all(
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: new Padding(
                          padding: EdgeInsets.all(4.0),
                          child: new Icon(Icons.volume_up),
                        ),
                      ),
                      new Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: new DecoratedBox(
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: new TextField(
                              decoration: new InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      new Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(right: 10.0),
                          child: Transform.translate(
                            child: new Icon(
                              Icons.tag_faces,
                              size: 38,
                            ),
                            offset: Offset(-3, -3),
                          )),
                      new DecoratedBox(
                        decoration: new BoxDecoration(
                          border: Border.all(
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        child: new Padding(
                          padding: EdgeInsets.all(4.0),
                          child: new Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
