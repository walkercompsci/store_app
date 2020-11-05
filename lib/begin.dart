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
            SizedBox(height: 20),
            Text(
              'Our Mission',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontSize: 28.0,
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
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Column(children: <Widget>[
                        Image.asset('assets/dog2.jpg'),
                        Text('Dog')
                      ],)
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Column(children: <Widget>[
                        Image.asset('assets/dog2.jpg'),
                        Text('Dog')
                      ],)
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Column(children: <Widget>[
                        Image.asset('assets/dog2.jpg'),
                        Text('Dog')
                      ],)
                  ),
                ],),
            ),
            SizedBox(height: 15),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.black26,
            ),
            SizedBox(height: 10.0),
            Text( 'For More Information Click On The Icons Above! (Shipping And Pricing May Very)',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontSize: 16.0,
              ),),
          ],
        ),
      ),
    );
  }
}