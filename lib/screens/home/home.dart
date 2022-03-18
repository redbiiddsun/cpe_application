import 'package:cpe_alert/routing_constants.dart';
import 'package:cpe_alert/screen_information.dart';
import 'package:cpe_alert/screens/home/component/calendarcard.dart';
import 'package:cpe_alert/screens/home/component/calendarclasscard.dart';
import 'package:cpe_alert/screens/home/component/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  int dateselect = 1;

  @override
  void initState() {
    super.initState();
  }

  final auth = FirebaseAuth.instance;

  void signOut() async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      //print(e);
    }
    Navigator.pushReplacementNamed(context, LoginRoute);
  }

  final monday = [
    [
      "MTH101",
      "Mathematics",
      "8:30",
      "10:30",
      "Zoom",
      "Songpon",
      "https://kmutt-ac-th.zoom.us/j/92218683317"
    ],
  ];

  final tuesday = [
    [
      "CPE100",
      "COMPUTER PROGRAMMING FORENGINEERS",
      "8:30",
      "10:30",
      "Zoom",
      "Natacha",
      "https://us06web.zoom.us/j/8672073434?pwd=MnNMWXppK2YzTFpHdjFWc0JOdENCdz09"
    ],
    [
      "MTH101",
      "Mathematics",
      "10:30",
      "12:30",
      "Zoom",
      "Songpon",
      "https://kmutt-ac-th.zoom.us/j/92218683317"
    ],
    [
      "CPE100",
      "COMPUTER PROGRAMMING FORENGINEERS (LAB)",
      "13:30",
      "15:30",
      "Zoom",
      "Natacha",
      "https://us06web.zoom.us/j/8672073434?pwd=MnNMWXppK2YzTFpHdjFWc0JOdENCdz09"
    ],
  ];

  final wednesday = [
    [
      "CPE123",
      "USER EXPERIENCE/USER INTERFACE",
      "10:30",
      "12:30",
      "Zoom",
      "Ajan June",
      "https://us06web.zoom.us/j/8672073434?pwd=MnNMWXppK2YzTFpHdjFWc0JOdENCdz09"
    ],
  ];

  final thursday = [
    [
      "CPE123",
      "USER EXPERIENCE/USER INTERFACE",
      "10:30",
      "12:30",
      "Zoom",
      "Ajan June"
          "https://us06web.zoom.us/j/8672073434?pwd=MnNMWXppK2YzTFpHdjFWc0JOdENCdz09"
    ],
    [
      "LNG221",
      "ACADEMIC ENGLISH IN INTERNATIONAL CONTEXTS",
      "13:30",
      "15:30",
      "Zoom",
      "Ajan ....."
          "https://line.me/R/ti/g/WkHQEkIA1R"
    ],
  ];

  final friday = [
    [
      "CPE111",
      "Discrete Mathematics for Computer Engineers",
      "9:30",
      "12:30",
      "Zoom",
      "Narumon"
          "https://kmutt-ac-th.zoom.us/j/92218683317"
    ],
    [
      "CPE101",
      "Computer Programming for Engineers",
      "15:30",
      "17:30",
      "Zoom",
      "Jumpon"
          "https://www.facebook.com/groups/4443556728990006"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> dateList = [
      ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return CalendarClassCard(
              classNo: monday[index][1],
              place: monday[index][4],
              startTime: monday[index][2],
              endTime: monday[index][3],
              professor: monday[index][5],
            );
          }),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenInformation.screenHeight! * 0.168),
        child: Container(
          height: ScreenInformation.screenHeight! * 0.20,
          decoration: const BoxDecoration(
              color: Color(0xFFD0F1EB),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.only(
                left: ScreenInformation.screenWidth! * 0.0533,
                right: ScreenInformation.screenWidth! * 0.0533),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: ScreenInformation.screenNotch,
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    image: const DecorationImage(
                      image: AssetImage("assets/image/3436_STD.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenInformation.screenWidth! * 0.04),
                  child: Container(
                    margin: ScreenInformation.screenNotch,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi, Phanasorn",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "64070503436",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenInformation.screenWidth! * 0.1,
                ),
                Expanded(
                  child: Container(
                    margin: ScreenInformation.screenNotch,
                    child: PopupMenuButton(
                      itemBuilder: (context) => const [
                        PopupMenuItem(
                          child: Text("Logout"),
                          value: "Logout",
                        )
                      ],
                      onSelected: (value) {
                        if (value == "Logout") {
                          signOut();
                        } else {}
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
                      Navigator.pushNamed(context, ClassRoute);
                    },
                  ),
                  MenuSelcetion(
                    title: "Assignment",
                    color: const Color(0xFFD0F1EB),
                    image: AssetImage("assets/image/work.png"),
                    fit: BoxFit.cover,
                    onTap: () {
                      Navigator.pushNamed(context, AssignmentRoute);
                    },
                  ),
                  MenuSelcetion(
                      title: "Classmate",
                      color: const Color(0xFFFDC9D2),
                      image: AssetImage("assets/image/people.jpg"),
                      onTap: () {
                        Navigator.pushNamed(context, ClassmateRoute);
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
                      dateselect = date.weekday;
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
              ),
              CalendarClassCard(
                classNo: "No Class",
                place: "No Class",
                startTime: "No Class",
                endTime: "No Class",
                professor: "No Class",
              )
              /*ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  }),*/
            ],
          ),
        ),
      ),
    );
  }
}
