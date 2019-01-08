import 'package:flutter/material.dart';
import '../../utils/date.dart';

class ListItem extends StatelessWidget {
  final data;
  final onActive;
  final index;
  var formatDate;
  ListItem({this.data, this.index, this.onActive}) {
    // 格式化时间
    formatDate = readTimestamp(data['msgs'][0]['time']);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 80.0,
        child: new GestureDetector(
          onTap: () {
            this.onActive();
          },
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
                child: new Padding(
                  padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: new Container(
                    height: double.infinity,
                    child: new DecoratedBox(
                      // 使用flex + expanded，并控制expanded的flex属性来进行快捷的布局
                      child: new Column(
                        children: <Widget>[
                          new Expanded(
                            child: new Align(
                                alignment: Alignment.centerLeft,
                                child: new Flex(
                                  direction: Axis.horizontal,
                                  children: <Widget>[
                                    new Expanded(
                                      flex: 5,
                                      child: new Text('${data['name']}'),
                                    ),
                                    new Expanded(
                                      flex: 1,
                                      child: new Center(
                                        child: new Text('$formatDate'),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          new Expanded(
                            child: new Align(
                              alignment: Alignment.centerLeft,
                              child: new Text('${data['msgs'][0]['text']}'),
                            ),
                          ),
                        ],
                      ),
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
              ),
            ],
          ),
        ));
  }
}
