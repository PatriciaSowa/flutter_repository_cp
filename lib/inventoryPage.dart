import 'package:flutter/material.dart';

import './inventoryRow.dart';

class InventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
      ),
      body: Column(
        children: [
          InventoryRow(
            itemName: 'Torniquet',
            itemAmount: 10,
            itemImage: 'sword.png'
          ),
          InventoryRow(
              itemName: 'Infusion',
              itemAmount: 5,
              itemImage: 'shield.png'
          ),
          InventoryRow(
              itemName: 'Druckverband',
              itemAmount: 30,
              itemImage: 'verband.png'
          ),
          InventoryRow(
              itemName: 'Goedeltubus',
              itemAmount: 15,
              itemImage: 'tubus.png'
          ),
          InventoryRow(
              itemName: 'Beatmungsgerät',
              itemAmount: 1,
              itemImage: 'tubus.png'
          ),
        ],
      ),

    );
  }
}
