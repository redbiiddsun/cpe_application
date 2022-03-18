import 'package:cpe_alert/routing_constants.dart';
import 'package:cpe_alert/screen_information.dart';
import 'package:cpe_alert/screens/main/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cpe_alert/router.dart' as router;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) async {
    FirebaseAuth.instance.authStateChanges().listen((event) {
      if (event != null) {
        //if user login
        // ignore: unused_local_variable
        String uid = event.uid;
        runApp(MyApp(
          intiroute: MainRoute,
        ));
      } else {
        //if user logout
        runApp(MyApp(
          intiroute: LoginRoute,
        ));
      }
    });
  });
}

class MyApp extends StatelessWidget {
  final String intiroute;

  const MyApp({Key? key, required this.intiroute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CPEAlert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: intiroute,
    );
  }
}
