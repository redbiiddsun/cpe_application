import 'package:cpe_alert/screen_information.dart';
import 'package:cpe_alert/screens/home/component/appbar.dart';
import 'package:cpe_alert/screens/home/component/calendarcard.dart';
import 'package:cpe_alert/screens/home/component/menu.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 27, left: 26, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Calendarcard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuSelcetion(
                    title: "Zoom",
                    image: AssetImage("assets/image/zoom-icon-logo.png"),
                    onTap: () {
                      print("object");
                    },
                  ),
                  MenuSelcetion(
                    title: "Assignment",
                    onTap: () {
                      print("print");
                    },
                  ),
                  MenuSelcetion(
                      title: "Classmate",
                      onTap: () {
                        print("1");
                      }),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 28),
                child: DatePicker(
                  DateTime.now(),
                  width: 50,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: const Color(0xFFFDC9D2),
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 28),
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: Text(
                        "Time",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFBCC1CD),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Text(
                          "Course/Assignments",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFFBCC1CD),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
