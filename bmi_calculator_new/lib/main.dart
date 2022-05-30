import 'package:bmi_calculator_new/gender_card.dart';
import 'package:bmi_calculator_new/slider_thing.dart';
import 'package:bmi_calculator_new/xd_card.dart';
import 'package:flutter/material.dart';

import 'number_click.dart';
import 'results.dart';

final Color? backgroundColor = Colors.deepOrange[900];

void main() {
  runApp(HeheExDe());
}

class HeheExDe extends StatelessWidget {
  const HeheExDe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.5),
            thumbColor: Colors.blue[900],
            activeTrackColor: Colors.blue[600],
            inactiveTrackColor: Colors.blue[300]),
      ),
      debugShowCheckedModeBanner: false,
      home: Skeleton(),
    );
  }
}

class Skeleton extends StatelessWidget {
  List<XDCard> genderButtons = [];

  Skeleton() {
    genderButtons = [
      XDCard(
        child: GenderCard.Beer(),
      ),
      XDCard(
        child: GenderCard.Wine(),
      ),
    ];
  }

  void childClicked() {
    genderButtons.forEach(
      (element) {
        element.check(false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ...genderButtons.map(
                  (e) => Expanded(child: e),
                ),
              ],
            ),
          ),
          Expanded(
            child: XDCard(
              child: SliderThing(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: XDCard(
                    child: NumberClick(13),
                  ),
                ),
                Expanded(
                  child: XDCard(
                    child: NumberClick(37),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 35,
            color: Colors.red,
            child: TextButton(
              child: Text("!!!!"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Results()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
