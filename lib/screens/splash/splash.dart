import 'package:cpe_alert/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatefulWidget {
  static const routeName = '/';
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    asyncMethod();
  }

  void asyncMethod() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const Home(),
      duration: 5000,
      //imageSize: 200,
      //imageSrc: "images/iconsplash.png",
      text: "CPE Alert",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
      colors: const [
        Color(0xffF9ACC0),
        Color(0xffC6A7E4),
        Color(0xff97AFDE),
        Color(0xffa2d18c),
      ],
      backgroundColor: Colors.white,
    );
  }
}
