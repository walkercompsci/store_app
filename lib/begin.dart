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
              'Made By Special Hands',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 50.0,
                  fontFamily: 'Poppins'
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
                  label: Text("Mission",
                    style: TextStyle(
                        fontFamily: 'Poppins'
                    ),
                  ),
                ),
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
              'Featured Products',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontFamily: 'Poppins',
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 675,
              endIndent: 675,
              color: Colors.black26,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child:
                      Column(
                        children: [
                          Image.asset('assets/sh9.jpg',
                            width: 350,
                            height: 350,
                          ),
                          SizedBox(height: 10),
                          Text( 'Puppy Treats',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                letterSpacing: 2.0,
                                fontSize: 18.0,
                                fontFamily: 'Poppins'
                            ),
                          ),

                          Text( 'The little ones will love it!',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                letterSpacing: 2.0,
                                fontSize: 12.0,
                                fontFamily: 'Poppins'
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Column(children: <Widget>[
                        Image.asset('assets/sh3.jpg',
                          width: 350,
                          height: 350,
                        ),
                        SizedBox(height: 10),
                        Text('Teenage Treats',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              letterSpacing: 2.0,
                              fontSize: 18.0,
                              fontFamily: 'Poppins'
                          ),
                        ),
                        Text( 'Sure to keep those doggies going!',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              letterSpacing: 2.0,
                              fontSize: 12.0,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ],
                      )
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Column(children: <Widget>[
                        Image.asset('assets/sh12.jpg',
                          width: 350,
                          height: 350,
                        ),
                        SizedBox(height: 10),
                        Text( 'Adult Treats',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              letterSpacing: 2.0,
                              fontSize: 18.0,
                              fontFamily: 'Poppins'
                          ),
                        ),
                        Text( 'Thriving and still kicking!',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            letterSpacing: 2.0,
                            fontSize: 12.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                      )
                  ),
                ],
              ),
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
                  fontFamily: 'Poppins'
              ),
            ),
            SizedBox(height: 20),
            Text('This service is happily supplied by The Special Hands Club at the Walker Career Center',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins'
              ),
            ),
          ],
        ),
      ),
    );
  }
}