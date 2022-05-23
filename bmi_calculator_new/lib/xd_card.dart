import 'package:flutter/material.dart';

final Color? checkedColor = Colors.deepOrange[400];
final Color? uncheckedColor = Colors.deepOrange[600];
final double margin = 8;
final double borderRadius = 10;

class XDCard extends StatefulWidget {
  Widget? child;
  bool checked = false;

  void check(bool value) {
    checked = value;
  }

  void toggle() {
    check(!checked);
  }

  XDCard({this.child});

  @override
  State<XDCard> createState() => _XDCardState();
}

class _XDCardState extends State<XDCard> {
  void clicked() {
    setState(() {
      widget.toggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clicked,
      child: Container(
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: widget.checked ? checkedColor : uncheckedColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: widget.child,
      ),
    );
  }
}
