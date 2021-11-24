import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class Calendarcard extends StatelessWidget {
  const Calendarcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ]),
    );
  }
}
