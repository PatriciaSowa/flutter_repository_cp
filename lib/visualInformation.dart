import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/main.dart';

class VisualInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'A11 P 1 - 4 D 13',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Image.asset(
          './graphics/patient.jpg',
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.7,
          //fit: BoxFit.cover,
        ),
      ],
    );
  }
}
