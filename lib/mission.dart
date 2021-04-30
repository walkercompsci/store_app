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
                  Text(
                    'Made By Special Hands',
                    textAlign: TextAlign.left,
                  style: TextStyle(
                  fontFamily: 'Poppins'
                    ),
                  ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/begin');
                  },
                    icon: Icon(Icons.water_damage),
                    label: Text("Home",
                      style: TextStyle(
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  Icon(Icons.airport_shuttle),
                  SizedBox(width: 10),
                  Text("Mission",
                    style: TextStyle(
                        fontFamily: 'Poppins'
                    ),
                  ),
                  SizedBox(width: 10),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/contacts');
                  },
                    icon: Icon(Icons.account_circle_rounded),
                    label: Text("Contacts",
                      style: TextStyle(
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/pictures');
                  },
                    icon: Icon(Icons.add_a_photo),
                    label: Text("Community",
                      style: TextStyle(
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/products');
                  },
                    icon: Icon(Icons.wb_sunny),
                    label: Text("Products",
                      style: TextStyle(
                          fontFamily: 'Poppins'
                      ),
                    ),
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
            SizedBox(height: 10,),
            Text(
              '12+ Program at Walker Career Center',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 50.0,
                fontFamily: 'Poppins',
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
                            'The 12+ Program is designed for students with disabilities who are transitioning into post secondary adult life. Our mission as a 12+ Program is to prepare and support our students to be contributing members of the community through the development of communication, self advocacy, adaptive and vocational skills.',
                            style: TextStyle(
                              color: Colors.green[900],
                              letterSpacing: 2.0,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100,),
                Expanded(
                  child: Image.asset(
                    'assets/sh4.jpg',
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