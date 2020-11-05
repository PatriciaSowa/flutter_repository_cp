import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/main.dart';

class DetailedInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(
          children: [
            Container(
             child: Text(
                'Personalien',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: normalFontSize,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Text(
                'Alter: 50; Geschlecht: W; 1,75 m; blonde Haare; blaue Augen; Brille',
                //padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: normalFontSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
