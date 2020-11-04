import 'package:flutter/material.dart';
import 'config.dart' as config;
import 'main.dart';

class BuildButtonSection extends StatelessWidget {
  //Color containerColor = Theme.of(context).primaryColor;
  Color grayContainerColor = Colors.grey;
  Color fontColor = Colors.black;
  final Color containerColor;

  BuildButtonSection(this.containerColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFastField(
              config.Configuration.is_ambulant
                  ? containerColor
                  : grayContainerColor,
              fontColor,
              'G',
              context),
          _buildFastField(
              config.Configuration.is_bleeding
                  ? containerColor
                  : grayContainerColor,
              fontColor,
              config.Configuration.has_sputtering_bleeding ? 'X' : '~',
              context),
          _buildFastField(
              config.Configuration.is_motionless
                  ? containerColor
                  : grayContainerColor,
              fontColor,
              'R',
              context),
          _buildFastField(
              config.Configuration.has_cyanosis
                  ? containerColor
                  : grayContainerColor,
              fontColor,
              'Z',
              context)
        ],
      ),
    );
  }
}

Column _buildFastField(
    Color containerColor, Color fontColor, String label, BuildContext context) {
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
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
          ),
        ),
      ),
    ],
  );
}