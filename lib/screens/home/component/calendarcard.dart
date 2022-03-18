import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class Calendarcard extends StatelessWidget {
  const Calendarcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: ScreenInformation.screenHeight! * 0.025,
          bottom: ScreenInformation.screenHeight! * 0.025,
          left: ScreenInformation.screenWidth! * 0.034,
          right: ScreenInformation.screenWidth! * 0.034),
      height: ScreenInformation.screenHeight! * 0.213,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/image/Hands.png",
            width: ScreenInformation.screenWidth! * 0.352,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Calendar",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF10182B),
                ),
              ),
              Text(
                "First Year",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF10182B),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
