import 'package:flutter/material.dart';
import 'PermissionSelector.dart';
import 'package:flutter_task_project/Widgets/UserDeatails.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        UserDetails(),
        Expanded(
          child: Center(child: PermissionSelector()),
        )
      ],
    );
  }
}
