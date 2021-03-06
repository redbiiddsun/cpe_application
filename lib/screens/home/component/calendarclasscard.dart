import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class CalendarClassCard extends StatelessWidget {
  final String classNo;
  final String content;
  final String place;
  final String professor;
  final String startTime;
  final String endTime;

  const CalendarClassCard({
    Key? key,
    required this.classNo,
    this.content = "",
    required this.place,
    this.professor = "",
    required this.startTime,
    required this.endTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    startTime,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF212525),
                    ),
                  ),
                  Text(
                    endTime,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFFBCC1CD),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              //height: ScreenInformation.screenHeight! * 0.168,
              decoration: BoxDecoration(
                color: Color(0xFF91D7E0),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      classNo,
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF212525),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: ScreenInformation.screenHeight! * 0.0086,
                          bottom: ScreenInformation.screenHeight! * 0.0197),
                      child: Text(
                        content,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF212525),
                        ),
                      ),
                    ),
                    Row(
                      children: [Icon(Icons.location_on_outlined), Text(place)],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                              top: ScreenInformation.screenHeight! * 0.0086),
                          child: const CircleAvatar(
                            radius: 10,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(professor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
