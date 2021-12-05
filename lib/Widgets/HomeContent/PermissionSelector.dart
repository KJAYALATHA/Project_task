import 'package:flutter/material.dart';
import 'package:flutter_task_project/Widgets/HomeContent/PermissionDestop.dart';
import 'package:flutter_task_project/Widgets/HomeContent/PermissionMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PermissionSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PermissionMobile(),
      tablet: PermissionTabletDesktop(),
    );
  }
}
