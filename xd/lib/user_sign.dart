import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xd/user_sign.dart';

class UserSign extends StatelessWidget {
  String? label;
  Function(String login, String password)? onDataEnter;

  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  UserSign({this.label, this.onDataEnter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (label != null) Text(label!),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(controller: login),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(controller: password),
                ],
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => print(login.text +
                  " " +
                  password
                      .text), //onDataEnter ?? (String b, String a) onDataEnter!("xd", "xd"),
              child: Text("Go"),
            ),
          ],
        ),
      ),
    );
  }
}
