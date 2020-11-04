import 'package:flutter/material.dart';

class QrCodeScanner extends StatelessWidget {
  final double smallFontSize;
  final double normalFontSize;
  final double bigFontSize;

  QrCodeScanner({this.smallFontSize, this.normalFontSize, this.bigFontSize});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
          title: Text('QR-Code Scanner'),
      ),
      body: Column(
      children: [
        Text(
          'Please scan the Code :)',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ]
      ),
    );
  }
}