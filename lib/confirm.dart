import 'package:flutter/material.dart';
import 'info.dart';

class Confirm extends StatelessWidget {
  Info info;

  Confirm({this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success')
      ), 
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.firstName,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              info.lastName,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              info.email,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
    
  }
}
