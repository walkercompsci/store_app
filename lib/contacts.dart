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
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}