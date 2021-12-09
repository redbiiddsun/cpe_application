import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({
    Key? key,
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
        color: Color(0xFFD3E1FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CPE123",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "USER EXPERIENCE/USER INTERFACE",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  //fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Wednesday, 10:30-12:30",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  //fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Wednesday, 10:30-12:30",
                style: TextStyle(
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
