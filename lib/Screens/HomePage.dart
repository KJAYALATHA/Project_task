import 'package:flutter/material.dart';
import 'package:flutter_task_project/Widgets/Centered_view.dart';
import 'package:flutter_task_project/Widgets/HomeContent/HomeContentDesk.dart';
import 'package:flutter_task_project/Widgets/HomeContent/HomeContentTab.dart';
import 'package:flutter_task_project/Widgets/Navigation/NavigationDarwer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../Widgets/Navigation/Navigational_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_task_project/Widgets/UserDeatails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _firestore = FirebaseFirestore.instance;
  void getNotification() async {
    print('|||||||||||||||||||||||||||||||||||||||______|||______');
    final time = await _firestore.collection('webinar').get();
    for (var i in time.docs) {
      print(i);
      print('|||||||||||||||||||||||||||||||||||||||____________');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNotification();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            NavBar(),
            CenteredView(
              child: Column(
                children: <Widget>[
                  Row(children: [
                    // UserDetails(),
                    Expanded(
                      child: ScreenTypeLayout(
                        mobile: HomeContentMobile(),
                        desktop: HomeContentDesktop(),
                      ),
                    )
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
