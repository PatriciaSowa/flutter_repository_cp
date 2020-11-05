import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/firstInformationSection.dart';
import 'package:flutter_prototype_cp/visualInformation.dart';
import './buttonSection.dart';
import './detailedInformation.dart';
import './visualInformation.dart';
import './qrCode.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart';
//import 'package:relative_scale/relative_scale.dart';

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
    final double smallFontSize = 10;
    final double normalFontSize = 14;
    final double bigFontSize = 18;

    Color containerColor = Theme.of(context).primaryColor;
    Color grayContainerColor = Colors.grey;
    Color fontColor = Colors.black;

    void _openDetailedInformation() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailedInformationPage(
        smallFontSize: smallFontSize,
        normalFontSize: normalFontSize,
        bigFontSize: bigFontSize,
      ),));
    }

    void _openQRCodeScanner() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => QrCodeScanner(
        containerColor,
        // smallFontSize: smallFontSize,
        // normalFontSize: normalFontSize,
      ),));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Schnelldiagnose'),
          actions: [
            IconButton(icon: Icon(Icons.add_circle), onPressed: _openDetailedInformation)
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

class PatientData extends StatefulWidget {
  @override
  _PatientDataState createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
  final _data_of_patient = <String>['Blutdruck', 'Puls', 'Atemfrequenz'];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: SizedBox(
              height: 200.0,
              child: new ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: _data_of_patient.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      child: Center(
                          child: Text('Entry ${_data_of_patient[index]}')),
                    );
                  }))),
    ]);
  }
}
