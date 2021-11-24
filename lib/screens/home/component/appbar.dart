import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize =>
      Size.fromHeight(ScreenInformation.screenHeight! * 0.168);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: ScreenInformation.screenNotch,
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ScreenInformation.screenWidth! * 0.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              )
            ],
          ),
        ));
  }
}