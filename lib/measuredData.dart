//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/main.dart';

class PatientData extends StatefulWidget {
  @override
  _PatientDataState createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
  final _dataOfPatient = <String>['Blutdruck', 'Puls', 'Atemfrequenz'];
  Map<String, int> _measured = {'Blutdruck': 90};

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: SizedBox(
              height: 200.0,
              child: new ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: _dataOfPatient.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container (child: _buildRow('${_dataOfPatient[index]}'));
                  }))),
    ]);
  }

  Widget _buildRow(String measurement) {
    final _biggerFont = TextStyle(fontSize: bigFontSize);
    final alreadyMeasured = _measured.containsKey(measurement);
    return ListTile(
      title: Text(
        measurement,
        style: TextStyle(fontSize: bigFontSize),
      ),
      trailing: alreadyMeasured
          ? Text((_measured[measurement]).toString(), style: _biggerFont)
          : Text("not measured",
              style: TextStyle(
                color: Colors.grey[500],
              )),
      onTap: () {
        setState:
        (() {
          _measured.putIfAbsent('Atemfequenz', () => 101);
        });
      },
    );
  }
}
