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
      backgroundColor: Colors.green[200],
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.green[600],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.airport_shuttle),
                  SizedBox(width: 10),
                  Text("Mission"),
                  SizedBox(width: 10),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/contacts');
                  },
                    icon: Icon(Icons.account_circle_rounded),
                    label: Text("Contacts"),
                  ),
                  SizedBox(width: 10,),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/pictures');
                  },
                    icon: Icon(Icons.add_a_photo),
                    label: Text("Community"),
                  ),
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
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              'Our Job Here At Walker Career Center',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 50.0,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          border: Border.all(
                            color: Colors.black,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'We sell to township employees and student families but we have been approached about selling further into communities.',
                            style: TextStyle(
                              color: Colors.green[900],
                              letterSpacing: 2.0,
                              fontSize: 22.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100,),
                Expanded(
                  child: Image.asset(
                    'assets/dog1.jpg',
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