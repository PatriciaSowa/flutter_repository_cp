import 'package:flutter/material.dart';
import 'package:flutter_prototype_cp/main.dart';

import './detailedInformation.dart';
import './inventoryPage.dart';
import './exchangePage.dart';

class MenuOption extends StatefulWidget {
  final String routeName;
  final Function route;

  MenuOption({
    @required this.routeName,
    @required this.route,
  });

  @override
  _MenuOptionState createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
  //
  // void _openDetailedInformation() {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) => DetailedInformationPage(),
  //   ));
  // }
  //
  // void _openExchangePage(BuildContext context) {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => ExchangePage()));
  // }
  //
  // void _openInventoryPage() {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => InventoryPage()));
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListTile(
              onTap: () => widget.route(context),
              leading: Icon(
                Icons.add,
                size: 28,
              ),
              title: Container(
                child: Text(
                  widget.routeName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: bigFontSize),
                ),
              ),
              dense: true,
              //tileColor: Colors.black12,
            ),
          ),
        ],
      ),
    ));
  }
}

class MenuOptions extends StatelessWidget {
  void _openDetailedInformation(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => DetailedInformationPage(),
    ));
  }

  void _openExchangePage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ExchangePage()));
  }

  void _openInventoryPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => InventoryPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Column(
        children: [
          MenuOption(
            routeName: 'Detailed Information',
            route: _openDetailedInformation,
          ),
          MenuOption(
            routeName: 'Inventory',
            route: _openInventoryPage,
          ),
          MenuOption(
            routeName: 'Exchange Inventory',
            route: _openExchangePage,
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
