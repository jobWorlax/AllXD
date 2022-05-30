import 'package:flutter/material.dart';
import 'consts.dart';

class NumberClick extends StatefulWidget {
  int number;

  NumberClick(this.number);

  @override
  State<NumberClick> createState() => _NumberClickState();
}

class _NumberClickState extends State<NumberClick> {
  void iterateNumber(int by) {
    setState(() {
      widget.number += by;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.number.toString(),
          style: kTextLabel1Style,
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
              iconData: Icons.remove,
              onPress: () => iterateNumber(-1),
            ),
            SizedBox(
              width: 18,
            ),
            RoundedButton(
              iconData: Icons.add,
              onPress: () => iterateNumber(1),
            ),
          ],
        )
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  IconData? iconData;
  VoidCallback? onPress;

  RoundedButton({this.iconData, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 45, height: 45),
      elevation: 0,
      fillColor: Colors.blue,
      shape: CircleBorder(),
      onPressed: onPress,
      child: Icon(iconData),
    );
  }
}
