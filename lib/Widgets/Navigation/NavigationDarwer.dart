import 'package:flutter/material.dart';
import 'package:flutter_task_project/Screens/HomePage.dart';
import 'package:flutter_task_project/Widgets/Navigation/DrawerItem.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavBarItem.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavigationDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 30),
                NavBarItem("HOME", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: <Widget>[
                Icon(Icons.update),
                SizedBox(width: 30),
                NavBarItem("API", () {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: [
                Icon(Icons.dark_mode_sharp),
                SizedBox(width: 30),
                NavBarItem("DRAG", () {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: [
                Icon(Icons.dashboard),
                SizedBox(width: 30),
                NavBarItem("DASHBOARD", () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
