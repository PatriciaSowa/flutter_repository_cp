import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/main.dart';

class BuildFirstInformationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
          child: Text(
            'Verletzungen:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: normalFontSize,
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
