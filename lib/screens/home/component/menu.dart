import 'package:cpe_alert/screen_information.dart';
import 'package:flutter/material.dart';

class MenuSelcetion extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final ImageProvider<Object> image;
  final VoidCallback? onTap;

  const MenuSelcetion({
    Key? key,
    this.title = "NULL",
    this.icon = Icons.help_outlined,
    this.image = const AssetImage("assets/image/3436_STD.jpg"),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: ScreenInformation.screenHeight! * 0.034),
        height: ScreenInformation.screenHeight! * 0.163,
        width: ScreenInformation.screenWidth! * 0.25,
        decoration: BoxDecoration(
          color: const Color(0xFFDED2F9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: ScreenInformation.screenHeight! * 0.020),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: ScreenInformation.screenHeight! * 0.020),
              child: Text(
                title!,
                style: const TextStyle(
                    fontFamily: "Metropolis",
                    fontSize: 15.38,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
