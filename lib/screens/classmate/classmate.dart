import 'package:flutter/material.dart';

class Classmate extends StatefulWidget {
  const Classmate({Key? key}) : super(key: key);

  @override
  _ClassmateState createState() => _ClassmateState();
}

List<String> nameList = [
  "64070503436 พณศร ศรีสยาม",
  "64070503439 พิชญฎา สงฆ์รักษ์",
  "64070503474 วีรภัทร ทุนหิรัญกร",
  "64070503463 ญาณวุฒิ ภาษาชีวะ",
];

class _ClassmateState extends State<Classmate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFF656F77),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Classmate",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    //backgroundImage: AssetImage("assets/image/3436_STD.jpg"),
                  ),
                  title: Text(nameList[index]),
                ),
              );
            }),
      ),
    );
  }
}
