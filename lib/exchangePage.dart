import 'package:flutter/material.dart';

import './exchangeRow.dart';

class ExchangePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exchange items'),
      ),
      body: Column(
        children: [
          ExchangeRow(
            itemName: 'Torniquet',
            initialLeftAmount: 10,
            initialRightAmount: 5,
          ),
          ExchangeRow(
            itemName: 'Infusion',
            initialLeftAmount: 5,
            initialRightAmount: 3,
          ),
          ExchangeRow(
            itemName: 'Druckverband',
            initialLeftAmount: 30,
            initialRightAmount: 7,
          ),
          ExchangeRow(
            itemName: 'Goedeltubus',
            initialLeftAmount: 15,
            initialRightAmount: 10,
          ),
          ExchangeRow(
            itemName: 'Beatmungsgerät',
            initialLeftAmount: 1,
            initialRightAmount: 0,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Finish the exchange',
        child: Icon(Icons.check),
      ),
    );
  }
}
