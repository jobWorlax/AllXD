import 'package:flutter/material.dart';
import 'package:xd/user_sign.dart';

class LogIn extends StatelessWidget {
  static String ID = 'LogIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: UserSign(label: "Log in")),
    );
  }
}
