import 'package:flutter/material.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavbarDeskTab.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavbarMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
