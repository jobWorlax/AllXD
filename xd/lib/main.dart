import 'package:flutter/material.dart';

import 'package:xd/log_in.dart';
import 'package:xd/register.dart';
import 'package:xd/user_sign.dart';

void main() => runApp(KEKW());

class KEKW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 2),
        ),
      ),
      initialRoute: LogIn.ID,
      routes: {
        LogIn.ID: (context) => LogIn(),
        Register.ID: (context) => Register(),
      },
    );
  }
}
