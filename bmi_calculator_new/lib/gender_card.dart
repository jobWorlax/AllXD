import 'package:flutter/material.dart';

const double iconSize = 70;
const double fontSize = 22;

class GenderCard extends StatelessWidget {
  late IconData icon;
  late String string;

  GenderCard.Beer() {
    icon = Icons.sports_bar;
    string = "BEER";
  }

  GenderCard.Wine() {
    icon = Icons.wine_bar;
    string = "WINE";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        Text(
          string,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
