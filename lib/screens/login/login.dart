import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 41, bottom: 41, left: 38, right: 38),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 72,
                      color: Color(0xFF10182B),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 31),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill your email';
                        } else {}
                      },
                      decoration: InputDecoration(
                          hintText: "Email",
                          labelStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xFF10182B),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFCDD9E3),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFFCDD9E3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFFCDD9E3),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 31),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill your email';
                        } else {}
                      },
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelStyle: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xFF10182B),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFCDD9E3),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFFCDD9E3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFFCDD9E3),
                            ),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 9),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Color(0xFF191D21)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 318,
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 350),
                    width: 305,
                    height: 54,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(const Color(0xFFCDD9E3)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF6F6CD9)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
