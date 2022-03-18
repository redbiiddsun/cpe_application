import 'package:cpe_alert/const.dart';
import 'package:cpe_alert/screen_information.dart';
import 'package:cpe_alert/screens/class/class.dart';
import 'package:cpe_alert/screens/home/home.dart';
import 'package:cpe_alert/screens/notification/notification.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    // ignore: prefer_const_constructors
    Home(),
    Class(),
    NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    ScreenInformation.init(context);
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: SizedBox(
        height: ScreenInformation.screenHeight! * 0.118,
        child: BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          selectedItemColor: kSecondaryColor,
          unselectedItemColor: const Color(0xFFACB8C2),
          type: BottomNavigationBarType.fixed,
          currentIndex: pageIndex,
          onTap: (value) => setState(() => pageIndex = value),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), label: "Class"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notification"),
          ],
        ),
      ),
    );
  }
}
