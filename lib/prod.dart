import 'package:flutter/material.dart';
import 'package:store_app/products.dart';
import 'package:store_app/products_display.dart';

class Prod extends StatefulWidget {

  @override
  _ProdState createState() => _ProdState();
}

class _ProdState extends State<Prod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Row(
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
              label: Text("Contacts"),
            ),
            FlatButton.icon(onPressed: () {
              Navigator.pushNamed(context, '/products');
              },
              icon: Icon(Icons.add_a_photo),
              label: Text("Community"),
            ),
            Icon(Icons.wb_sunny),
            SizedBox(width: 10),
            Text("Products"),
            SizedBox(width: 10,),
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

      body: ListView(
        children: [
          //Padding(padding: const EdgeInsets.all(25.0),),
           Container(
            height: 300.0,
            child: ProductsDetails(),
          ),
        ],
      ),
    );
  }
}
//   body: ListView(
//     shrinkWrap: false,
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           //padding: EdgeInsets.only(top: 8.0),
//           //margin: EdgeInsets.only(top:10.0),
//           height: MediaQuery.of(context).size.height,
//           //child: ProductsDetails(),
//         ),
//       ),
//     ],
//   ),