import 'package:flutter/material.dart';

import 'consts.dart';

class SliderThing extends StatefulWidget {
  const SliderThing({Key? key}) : super(key: key);

  @override
  State<SliderThing> createState() => _SliderThingState();
}

class _SliderThingState extends State<SliderThing> {
  int sliderValue = 1337;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "XDXD",
          style: kTextLabel2Style,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              sliderValue.toString(),
              style: kTextLabel1Style,
            ),
            Text("cm"),
          ],
        ),
        Slider(
          min: 0,
          max: 1337,
          value: sliderValue.toDouble(),
          onChanged: (double value) => setState(() {
            sliderValue = value.toInt();
          }),
        ),
      ],
    );
  }
}
