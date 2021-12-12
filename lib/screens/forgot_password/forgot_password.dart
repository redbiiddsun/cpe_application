import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  late String _email;
  final auth = FirebaseAuth.instance;

  void sendPasswordResetEmail() async {
    try {
      await auth.sendPasswordResetEmail(email: _email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'firebase_auth/invalid-continue-uri') {
        print('URL Error');
      } else if (e.code == 'auth/invalid-email' ||
          e.code == 'auth/user-not-found') {
        print('No user found for that email.');
      }
    } catch (e) {
      print(e);
    }
    Navigator.pop(context);
  }

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
              child: Form(
                key: _formKey,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Forgot",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        color: Color(0xFF10182B),
                      ),
                    ),
                    const Text(
                      "Password?",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        color: Color(0xFF10182B),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 31),
                      child: TextFormField(
                        validator: (value) {
                          if (EmailValidator.validate(value!) == true) {
                          } else if (value.isEmpty) {
                            return 'Please fill your email';
                          } else if (EmailValidator.validate(value) == false) {
                            return 'Please check your email format';
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your email address",
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
                          ),
                        ),
                        onChanged: (value) {
                          _email = value.trim();
                        },
                      ),
                    ),
                    const SizedBox(height: 26),
                    const Text(
                        "* We will send you a email to set or reset your new password"),
                    const SizedBox(height: 26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              sendPasswordResetEmail();
                            } else {
                              //For Warning User or Debug
                            }
                          },
                          child: const Icon(Icons.arrow_forward),
                          style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all(const CircleBorder()),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(20)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF6F6CD9)), // <-- Button color
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                              if (states.contains(MaterialState.pressed)) {
                                return const Color(0xFFCDD9E3);
                              } // <-- Splash color
                            }),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 300),
                    Center(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Color(0xFF6F6CD9),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
