import 'package:flutter/material.dart';

class PermissionTabletDesktop extends StatefulWidget {
  @override
  State<PermissionTabletDesktop> createState() =>
      _PermissionTabletDesktopState();
}

class _PermissionTabletDesktopState extends State<PermissionTabletDesktop> {
  int _radioValue = 0;

  void _handleRadioValueChange(int? value) => setState(() {
        _radioValue = value!;

        switch (_radioValue) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
        }
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("PERMISSIONS"),
                  Text("READ"),
                  Text("WRITE"),
                  Text("DENY"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("ANALYTICS"),
                  new Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange),
                  new Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  new Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("ANALYTICS"),
                  new Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange),
                  new Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  new Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
