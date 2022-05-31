import 'package:flutter/material.dart';
import 'package:xd/user_sign.dart';

class LogIn extends StatelessWidget {
  static String ID = "Login";

  void tryLogIn(String login, String password) {}

  @override
  Widget build(BuildContext context) {
    return UserSign(
      label: "Login",
      onDataEnter: tryLogIn,
    );
  }
}
