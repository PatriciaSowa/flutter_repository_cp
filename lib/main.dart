import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/firstInformationSection.dart';
import 'package:flutter_prototype_cp/visualInformation.dart';
import './buttonSection.dart';
//import './detailedInformation.dart';
import './visualInformation.dart';
import './qrCode.dart';
import './menu.dart';
import './measuredData.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart';
//import 'package:relative_scale/relative_scale.dart';

final double smallFontSize = 12;
final double normalFontSize = 16;
final double bigFontSize = 20;
final double iconSize = 30;
BuildContext context;
Color containerColor = Colors.lightGreen;
Color grayContainerColor = Colors.grey;
Color fontColor = Colors.black;

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
    void _openDetailedInformation() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MenuOptions(),
      ));
    }

    void _openQRCodeScanner() {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => QrCodeScanner(),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Schnelldiagnose'),
        actions: [
          IconButton(
              icon: Icon(Icons.menu), onPressed: _openDetailedInformation)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        children: [
          VisualInformation(),
          BuildButtonSection(),
          BuildFirstInformationSection(),
          MeasuredData(),
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
