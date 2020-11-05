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
                fontSize: 49.0,
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
              'Featured Products',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  children: [
                    Image.asset(
                    'assets/dog1.jpg',
                    height: 400,
                    width: 400,
                    ),
                    Text( 'DOG 1!',
                    style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                      ),
                    ),

                    Text( 'This dog is black and white',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 100),
                Column(
                  children: [
                    Image.asset('assets/dog2.jpg',
                    height: 400,
                    width: 400,
                    ),
                    Text( 'DOG 2!',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    Text( 'This dog is very little!',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 100),
                Column(
                  children: [
                    Image.asset('assets/dog3.jpg',
                    height: 400,
                    width: 400,
                      ),
                    Text( 'DOG 3!',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      ),
                    ),
                    Text( 'This dog has glasses!',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}