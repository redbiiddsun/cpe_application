import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {
  final String classNo;
  final String classdesicribe;
  final String time1;
  final String time2;

  const ClassCard({
    Key? key,
    required this.classNo,
    required this.classdesicribe,
    required this.time1,
    this.time2 = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenInformation.screenHeight! * 0.214,
      margin: EdgeInsets.only(
          top: 10,
          left: ScreenInformation.screenWidth! * 0.066,
          right: ScreenInformation.screenWidth! * 0.066),
      padding: EdgeInsets.only(
          top: ScreenInformation.screenHeight! * 0.0455,
          left: ScreenInformation.screenWidth! * 0.0533),
      decoration: BoxDecoration(
        color: const Color(0xFFD3E1FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                classNo,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                classdesicribe,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  //fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                time1,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                time2,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  //fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
