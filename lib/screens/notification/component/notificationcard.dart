import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: ScreenInformation.screenWidth! * 0.2,
      decoration: BoxDecoration(
        color: const Color(0xFFFDC9D2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            "CPE123 Have test on Monday ",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF212525),
            ),
          ),
        ],
      ),
    );
  }
}
