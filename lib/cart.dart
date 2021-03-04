import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Cart(),
));

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Column(
          children: [

            AppBar(
              backgroundColor: Colors.teal,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Special Hands',
                    textAlign: TextAlign.left,
                  ),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/begin');
                  },
                    icon: Icon(Icons.water_damage),
                    label: Text("Home"),
                  ),
                  SizedBox(width: 10),
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/mission');
                  },
                    icon: Icon(Icons.airport_shuttle),
                    label: Text("Mission"),
                  ),
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
            ),
            SizedBox(height: 15),
            Text(
              'Your Cart',
              style: TextStyle(
                color: Colors.teal,
                letterSpacing: 2.0,
                fontSize: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




