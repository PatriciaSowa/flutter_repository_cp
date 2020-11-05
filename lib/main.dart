import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/firstInformationSection.dart';
import 'package:flutter_prototype_cp/visualInformation.dart';
import './buttonSection.dart';
import './detailedInformation.dart';
import './visualInformation.dart';
import './qrCode.dart';
import './measuredData.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart';
//import 'package:relative_scale/relative_scale.dart';

final double smallFontSize = 10;
final double normalFontSize = 14;
final double bigFontSize = 18;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Prototype',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Color containerColor = Theme.of(context).primaryColor;
    Color grayContainerColor = Colors.grey;
    Color fontColor = Colors.black;

    void _openDetailedInformation() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailedInformationPage(
          smallFontSize: smallFontSize,
          normalFontSize: normalFontSize,
          bigFontSize: bigFontSize,
        ),
      ));
    }

    void _openQRCodeScanner() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => QrCodeScanner(
          smallFontSize: smallFontSize,
          normalFontSize: normalFontSize,
          bigFontSize: bigFontSize,
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Schnelldiagnose'),
        actions: [
          IconButton(
              icon: Icon(Icons.add_circle), onPressed: _openDetailedInformation)
        ],
      ),
      body: ListView(
        children: [
          VisualInformation(
            smallFontSize: smallFontSize,
            normalFontSize: normalFontSize,
            bigFontSize: bigFontSize,
          ),
          BuildButtonSection(containerColor),
          BuildFirstInformationSection(
            smallFontSize: smallFontSize,
            normalFontSize: normalFontSize,
            bigFontSize: bigFontSize,
          ),
          PatientData(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openQRCodeScanner,
        tooltip: 'QR-Code-Scanner',
        child: Icon(Icons.qr_code),
      ),
    );
  }
}

