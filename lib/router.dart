import 'package:cpe_alert/routing_constants.dart';
import 'package:cpe_alert/screens/assignment/assignment.dart';
import 'package:cpe_alert/screens/class/class.dart';
import 'package:cpe_alert/screens/classmate/classmate.dart';
import 'package:cpe_alert/screens/forgot_password/forgot_password.dart';
import 'package:cpe_alert/screens/login/login.dart';
import 'package:cpe_alert/screens/main/main_screen.dart';
import 'package:cpe_alert/screens/notification/notification.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case MainRoute:
      return MaterialPageRoute(builder: (context) => MainScreen());
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => Login());
    case ClassRoute:
      return MaterialPageRoute(builder: (context) => Class());
    case NotificationRoute:
      return MaterialPageRoute(builder: (context) => NotificationScreen());
    case AssignmentRoute:
      return MaterialPageRoute(builder: (context) => Assignment());
    case ClassmateRoute:
      return MaterialPageRoute(builder: (context) => Classmate());
    case ForgotPasswordRoute:
      return MaterialPageRoute(builder: (context) => ForgotPassword());
    default:
      return MaterialPageRoute(builder: (context) => Login());
  }
}
