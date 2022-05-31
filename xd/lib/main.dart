import 'package:flutter/material.dart';

import 'register.dart';
import 'log_in.dart';

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
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 13),
        ),
      ),
      initialRoute: Register.ID,
      routes: {
        Register.ID: (context) => Register(),
        LogIn.ID: (context) => LogIn(),
      },
    );
  }
}
