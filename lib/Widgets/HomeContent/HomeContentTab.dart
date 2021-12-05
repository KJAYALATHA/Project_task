import 'package:flutter/material.dart';
import 'PermissionSelector.dart';
import 'package:flutter_task_project/Widgets/UserDeatails.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          UserDetails(),
          SizedBox(
            height: 100,
          ),
          PermissionSelector()
        ],
      ),
    );
  }
}
