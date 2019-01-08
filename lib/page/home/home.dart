import 'package:flutter/material.dart';

import './shortcut.dart';
import './list.dart';

// 这样做不会警告
FocusNode _focusNode = FocusNode();

class WxHome extends StatelessWidget {
  final canShowShourcut;
  final toggleShourcut;
  WxHome({this.canShowShourcut, this.toggleShourcut});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(_focusNode);
          if (canShowShourcut == true) {
            this.toggleShourcut();
          }
        },
        child: new ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: new Stack(
            children: <Widget>[
              this.canShowShourcut
                  ? new Shortcut()
                  : new Container(height: 0.0, width: 0.0),
              new List(),
            ],
          ),
        ),
      ),
    );
  }
}
