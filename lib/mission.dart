import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Mission(),
));

class Mission extends StatefulWidget {
  @override
  _MissionState createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
    );
  }
}