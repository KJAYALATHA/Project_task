import 'package:flutter/material.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavBar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color.fromARGB(255, 31, 229, 146),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              RootScaffold.openDrawer(context);
            },
          ),
        ],
      ),
    );
  }
}

class RootDrawer {
  static State<StatefulWidget>? of(BuildContext context) {
    final State<StatefulWidget>? drawerControllerState =
        context.findRootAncestorStateOfType();
    return drawerControllerState;
  }
}

class RootScaffold {
  static openDrawer(BuildContext context) {
    final State<StatefulWidget>? scaffoldState =
        context.findRootAncestorStateOfType();
    Scaffold.of(context).openDrawer();
  }

  static State<StatefulWidget>? of(BuildContext context) {
    final State<StatefulWidget>? scaffoldState =
        context.findRootAncestorStateOfType();
    return scaffoldState;
  }
}
