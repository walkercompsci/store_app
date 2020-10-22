import 'package:flutter/material.dart';


class Begin extends StatefulWidget {
  @override
  _BeginState createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body:SafeArea(
        child: Column(
          children: [
            Text(
              'Special Hands',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 50.0,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Our Mission',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontSize: 28.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/mission');
                    },
                    icon: Icon(Icons.airport_shuttle),
                    label: Text("Mission"),
                ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/contacts');
                    },
                    icon: Icon(Icons.account_circle_rounded),
                    label: Text("contacts"),
                ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/pictures');
                    },
                    icon: Icon(Icons.add_a_photo),
                    label: Text("pictures"),
                ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/products');
                    },
                    icon: Icon(Icons.wb_sunny),
                    label: Text("products"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}