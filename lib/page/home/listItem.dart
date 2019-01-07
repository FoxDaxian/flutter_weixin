import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final data;
  ListItem({this.data});

  @override
  Widget build(BuildContext context) {
    print(data['avator']);
    return new Container(
      height: 80.0,
      child: new Row(
        children: <Widget>[
          new Container(
            height: double.infinity,
            width: 80.0,
            child: new Padding(
              padding: EdgeInsets.all(10.0),
              // 修饰器 decoratedbox 可以设置背景图片 圆角那些东西，可以联想成设置图片的非img方式
              child: new DecoratedBox(
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${data['avator']}'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          // 使用Expanded就可以占满剩余部分了
          Expanded(
            child: new Container(
              height: double.infinity,
              child: new DecoratedBox(
                child: new Text('123'),
                decoration: new BoxDecoration(
                  border: new Border(
                    bottom: new BorderSide(
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
