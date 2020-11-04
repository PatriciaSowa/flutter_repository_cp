import 'package:flutter/material.dart';

class BuildFirstInformationSection extends StatelessWidget {
  final double smallFontSize;
  final double normalFontSize;
  final double bigFontSize;

  BuildFirstInformationSection({this.smallFontSize, this.normalFontSize, this.bigFontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
          child: Text(
            'Verletzungen:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        Text(
          //padding: const EdgeInsets.only(left: 4, top: 8),
          'Teil-Amputation rechter Unterarm, spritzend blutend; schon großer Blutverlust',
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ]),
    );
  }
}
