import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Contacts(),
));

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.orange[600],
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
                  FlatButton.icon(onPressed: () {
                    Navigator.pushNamed(context, '/mission');
                  },
                    icon: Icon(Icons.airport_shuttle),
                    label: Text("Mission"),
                  ),
                  Icon(Icons.account_circle_rounded),
                  SizedBox(width: 10),
                  Text("Contacts"),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Dena Condra',
                      style: TextStyle(
                        fontSize: 75.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/dog1.jpg'),
                    radius: 40.0,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email: dcondra@warren.k12.in.us',
                  style: TextStyle(
                      fontSize: 25.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}