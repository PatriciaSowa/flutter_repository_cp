import 'package:flutter/material.dart';

import './detailedInformation.dart';

class MenuOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Column(
        children: [
          MenuOption(
            itemName: 'Detailed Information',
          ),
          MenuOption(
            itemName: 'Inventory',
          ),
          MenuOption(
            itemName: 'Members',
          ),
          MenuOption(
            itemName: 'Registration',
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

class MenuOption extends StatefulWidget {
  final String itemName;

  MenuOption({
    @required this.itemName,
  });

  @override
  _MenuOptionState createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
  void _openDetailedInformation() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => DetailedInformationPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListTile(
              leading: IconButton(
                onPressed: _openDetailedInformation,
                icon: Icon(Icons.add),
                tooltip: 'Click here for details',
                iconSize: 28,
                // highlightColor: Colors.red[900],
              ),
              title: Container(
                child: Text(
                  widget.itemName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              dense: true,
              //tileColor: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
