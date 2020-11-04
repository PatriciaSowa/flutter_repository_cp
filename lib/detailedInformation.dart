import 'package:flutter/material.dart';

class DetailedInformationPage extends StatelessWidget {
  final double smallFontSize;
  final double normalFontSize;
  final double bigFontSize;

  DetailedInformationPage({this.smallFontSize, this.normalFontSize, this.bigFontSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Information'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
            child: Text(
              'Personalien',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: normalFontSize,
              ),
            ),
          ),
          Text(
            'Alter: 50; Geschlecht: W; 1,75 m; blonde Haare; blaue Augen; Brille',
            //padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: normalFontSize,
            ),
          ),
        ],
      ),
    );
  }
}
