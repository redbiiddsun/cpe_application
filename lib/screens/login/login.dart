import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Padding(
          padding: const EdgeInsets.only(top: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 72,
                  color: Color(0xFF10182B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
