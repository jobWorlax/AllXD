import 'package:flutter/material.dart';
import 'package:xd/user_sign.dart';

class Register extends StatelessWidget {
  static String ID = "Register";

  void tryRegister(String login, String password) {}

  @override
  Widget build(BuildContext context) {
    return UserSign(
      label: "Register",
      onDataEnter: tryRegister,
    );
  }
}
