import 'package:cpe_application/routing_constants.dart';
import 'package:cpe_application/screens/forgot_password/forgot_password.dart';
import 'package:cpe_application/screens/login/login.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => Login());
    case ForgotPasswordRoute:
      return MaterialPageRoute(builder: (context) => ForgotPassword());
    default:
      return MaterialPageRoute(builder: (context) => Login());
  }
}
