import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/main.dart';

class PatientData extends StatefulWidget {
  @override
  _PatientDataState createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
  final _data_of_patient = <String>['Blutdruck', 'Puls', 'Atemfrequenz'];
  Map<String, int> _measured = {'Blutdruck': 90};

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
                    return Container (child: _buildRow('${_data_of_patient[index]}'));
                  }))),
    ]);
  }

  Widget _buildRow(String measurement) {
    final _biggerFont = TextStyle(fontSize: normalFontSize);
    final alreadyMeasured = _measured.containsKey(measurement);
    return ListTile(
      title: Text(
        measurement,
        style: _biggerFont,
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
