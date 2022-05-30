import 'package:flutter/material.dart';

class UserSign extends StatelessWidget {
  String? label;

  UserSign({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (label != null) Text(label!),
          SizedBox(
            height: 8,
          ),
          TextField(),
          SizedBox(
            height: 8,
          ),
          TextField(),
        ],
      ),
    );
  }
}
