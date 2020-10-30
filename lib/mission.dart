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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: 1500,),
            Text(
              'Special Hands',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 50.0,
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 15),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 500,
              endIndent: 500,
              color: Colors.black,
            ),
            SizedBox(height: 10,),
            Text(
              'Our Mission',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontSize: 28.0,
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 675,
              endIndent: 675,
              color: Colors.black26,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Our job here at the WC.',
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [

                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}