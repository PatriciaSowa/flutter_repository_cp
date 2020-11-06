import 'package:flutter/material.dart';

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<int> lockedDisplay;
  final timeLeft = 15;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 300,
        width: 300,
        child: Text(timeLeft.toString()),
      ),
    );
  }


  initState(){
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 15), vsync: this);
    lockedDisplay = IntTween(begin: 0, end: 15).animate(controller);
    lockedDisplay.addListender((){
      setState(() {

      });
    });
    controller.forward();
  }


}