import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  NavBarItem(this.title, this.onpress);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
