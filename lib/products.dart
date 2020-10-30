import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
     "name": "Treats",
     "picture": "assets/dog3.jpg",
     "price": 20,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("Products"),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Column(children: <Widget>[
                    Image.asset('assets/dog2.jpg'),
                    Text('Dog')
                  ],)
              ),
              Expanded(
                  child: Column(children: <Widget>[
                    Image.asset('assets/dog2.jpg'),
                    Text('Dog')
                  ],)
              ),
              Expanded(
                  child: Column(children: <Widget>[
                    Image.asset('assets/dog2.jpg'),
                    Text('Dog')
                  ],)
              ),
          ],
          ),],
      ),
        ),
      //body: ListView,
    ),
    );
  }
}

class Single_product extends StatelessWidget {
  //final prod_name;
  //final prod_picture;
  //final prod_price;

  //Single_prod()
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

