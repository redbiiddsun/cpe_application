import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class ClassAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ClassAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize =>
      Size.fromHeight(ScreenInformation.screenHeight! * 0.07142);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenInformation.screenHeight! * 0.20,
      margin: ScreenInformation.screenNotch,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Class",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFF000000),
            ),
          )
        ],
      ),
    );
  }
}
