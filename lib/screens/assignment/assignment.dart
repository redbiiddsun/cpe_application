import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFF656F77),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Assignment",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Container(
          child: SfCalendar(
              view: CalendarView.month,
              dataSource: MeetingDataSource(_getDataSource()),
              monthViewSettings: MonthViewSettings(
                  showAgenda: true,
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment)),
        ),
      ),
    );
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 13, 30, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 3));

  final tmr = DateTime(today.year, today.month, today.day + 1, 00, 00, 0);
  final DateTime tmrEndTime = startTime.add(const Duration(hours: 24));

  final tmr2 = DateTime(today.year, today.month, today.day + 3, 0, 0, 0);
  final DateTime tmrEndTime2 = startTime.add(const Duration(hours: 12));

  //final DateTime

  meetings.add(Meeting(
      'CPE111 Final Exam', startTime, endTime, const Color(0xFF0F8644), false));

  meetings.add(Meeting('CPE101 Project Submittion', tmr, tmrEndTime,
      const Color(0xFF0F8644), false));

  meetings.add(Meeting('CPE101 Project Presentation', tmr2, tmrEndTime2,
      const Color(0xFF0F8644), false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
