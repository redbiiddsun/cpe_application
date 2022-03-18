import 'package:cpe_alert/screen_information.dart';
import 'package:cpe_alert/screens/class/component/classappbar.dart';
import 'package:cpe_alert/screens/class/component/classcard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Class extends StatefulWidget {
  const Class({Key? key}) : super(key: key);

  @override
  State<Class> createState() => _ClassState();
}

class _ClassState extends State<Class> {
  final cpeClass = [
    [
      "CPE100",
      "COMPUTER PROGRAMMING FORENGINEERS",
      "Tuesday, 8:30-10:30",
      "Tuesday, 13:30-15:30",
      "https://us06web.zoom.us/j/8672073434?pwd=MnNMWXppK2YzTFpHdjFWc0JOdENCdz09"
    ],
    [
      "CPE101",
      "Computer Programming for Engineers",
      "Friday, 15:30-17:30",
      "",
      "https://www.facebook.com/groups/4443556728990006"
    ],
    [
      "CPE111",
      "Discrete Mathematics for Computer Engineers",
      "Thursday, 9:30-12:30",
      "Friday, 10:30-12:30",
      "https://kmutt-ac-th.zoom.us/j/92218683317"
    ],
    [
      "CPE123",
      "USER EXPERIENCE/USER INTERFACE",
      "Wednesday, 10:30-12:30",
      "Thursday, 10:30-12:30",
      "https://us06web.zoom.us/j/8672073434?pwd=MnNMWXppK2YzTFpHdjFWc0JOdENCdz09"
    ],
    [
      "MTH101",
      "Mathematics",
      "Monday, 8:30-10:30",
      "Tuesday, 10:30-12:30",
      "https://kmutt-ac-th.zoom.us/j/92218683317"
    ],
    [
      "LNG221",
      "ACADEMIC ENGLISH IN INTERNATIONAL CONTEXTS",
      "Thursday, 13:30-15:30",
      "",
      "https://line.me/R/ti/g/WkHQEkIA1R"
    ],
  ];

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFF656F77),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Class",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            //String classNo = cpeClass[index][1];
            return GestureDetector(
              onTap: () {
                _launchURL(cpeClass[index][4]);
              },
              child: ClassCard(
                classNo: cpeClass[index][0],
                classdesicribe: cpeClass[index][1],
                time1: cpeClass[index][2],
                time2: cpeClass[index][3],
              ),
            );
          }),
    );
  }
}
