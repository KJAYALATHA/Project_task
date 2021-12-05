import 'package:flutter/material.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavBarItem.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color.fromARGB(255, 31, 229, 146),
      // color: Color.fromARGB(255, 31, 229, 146),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('HOME', () {}),
              SizedBox(
                width: 60,
              ),
              NavBarItem('API', () {}),
              SizedBox(
                width: 60,
              ),
              NavBarItem('DRAG', () {}),
              SizedBox(
                width: 60,
              ),
              NavBarItem('DASHBOARD', () {}),
            ],
          )
        ],
      ),
    );
  }
}
