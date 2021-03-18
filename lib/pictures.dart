import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Pictures(),
));

class Pictures extends StatefulWidget {
  @override
  _PicturesState createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
            backgroundColor: Colors.purple[300],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made By Special Hands',
                ),
                FlatButton.icon(onPressed: () {
                  Navigator.pushNamed(context, '/begin');
                },
                  icon: Icon(Icons.water_damage),
                  label: Text("Home"),
                ),
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
                  label: Text("Contacts"),
                ),
                Icon(Icons.add_a_photo),
                SizedBox(width: 10),
                Text("Community"),
                SizedBox(width: 10,),
                FlatButton.icon(onPressed: () {
                  Navigator.pushNamed(context, '/products');
                },
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Products"),
                ),
              ],
            ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                  ),
                ),
              ],
          ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/sh1.jpg',
                    height: 500,
                    width: 250,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/sh2.jpg',
                    height: 500,
                    width: 500,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/sh3.jpg',
                    height: 500,
                    width: 500,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}