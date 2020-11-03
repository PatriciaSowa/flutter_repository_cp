import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';
import 'config.dart' as config;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _normalFontSize = TextStyle(fontSize: 14.0);
    final _bigFontSize = TextStyle(fontSize: 18.0);

    Color containerColor = Theme.of(context).primaryColor;
    Color grayContainerColor = Colors.grey;
    Color fontColor = Colors.black;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFastField(config.Configuration.is_ambulant ?  containerColor : grayContainerColor , fontColor, 'G', context),
          _buildFastField(config.Configuration.is_bleeding ?  containerColor : grayContainerColor, fontColor, config.Configuration.has_sputtering_bleeding ?  'X' : '~', context),
          _buildFastField(config.Configuration.is_motionless ?  containerColor : grayContainerColor, fontColor, 'R', context),
          _buildFastField(config.Configuration.has_cyanosis ?  containerColor : grayContainerColor, fontColor, 'Z', context)
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Container(
              child: Text(
                'A11 P 1 - 4 D 13',
                textAlign: TextAlign.center,
                style: _bigFontSize,
              ),
              margin: const EdgeInsets.only(top: 80),
            ),
            Image.asset(
              './graphics/patient.jpg',
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.7,
              //fit: BoxFit.cover,
            ),
            buttonSection,
            informationSection,
          ],
        ));
  }
}

Widget informationSection = Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          'Alter: 50, Geschlecht: W',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
      Text(
        '1,75 m, blonde Haare, blaue Augen, Brille, extrem adipös',
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 15.0,
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            'Verletzungen:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
        // Container(
        //   padding: const EdgeInsets.only(left: 4, top: 8),
        //   child: Text(
        //     'Teil-Amputation rechter Unterarm, spritzend blutend; schon großer Blutverlust',
        //     style: TextStyle(
        //       color: Colors.grey[500],
        //     ),
        //   ),
        // ),
      ]),
    ],
  ),
);

Column _buildFastField(Color containerColor, Color fontColor, String label, BuildContext context){
  // this is very important, you should always call this whenever you implement RelativeScaler on a widget.
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 8),
        color: containerColor,
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.width * 0.2,
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: fontColor,
            ),
          ),
        ),
      ),
    ],
  );
}
