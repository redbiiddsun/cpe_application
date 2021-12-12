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

  @override
  Widget build(BuildContext context) {
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
                    onTap: () {
                      Navigator.pushNamed(context, AssignmentRoute);
                    },
                  ),
                  MenuSelcetion(
                      title: "Classmate",
                      color: const Color(0xFFFDC9D2),
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
              CalendarClassCard(),
              CalendarClassCard(),
              CalendarClassCard(),
            ],
          ),
        ),
      ),
    );
  }
}
