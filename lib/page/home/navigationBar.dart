import 'package:flutter/material.dart';

class MyNavgationBar extends StatelessWidget {
  final navigationBarIndex;
  final canShowShourcut;
  final toggleShourcut;
  final onIndexChange;
  final navigationBarDefaultColor = Colors.black;
  
  MyNavgationBar({
    this.navigationBarIndex,
    this.canShowShourcut,
    this.toggleShourcut,
    this.onIndexChange,
  });

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: navigationBarIndex,
      onTap: (index) {
        if (canShowShourcut == true) {
          this.toggleShourcut();
        }
        this.onIndexChange(index);
      },
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.message,
            color: navigationBarDefaultColor,
          ),
          title: new Text(
            '微信',
            style: new TextStyle(color: navigationBarDefaultColor),
          ),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.book,
            color: navigationBarDefaultColor,
          ),
          title: new Text(
            '通讯录',
            style: new TextStyle(color: navigationBarDefaultColor),
          ),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.find_in_page,
            color: navigationBarDefaultColor,
          ),
          title: new Text(
            '发现',
            style: new TextStyle(color: navigationBarDefaultColor),
          ),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.person,
            color: navigationBarDefaultColor,
          ),
          title: new Text(
            '我',
            style: new TextStyle(color: navigationBarDefaultColor),
          ),
        ),
      ],
    );
  }
}
