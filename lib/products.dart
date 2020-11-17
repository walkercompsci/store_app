import 'package:flutter/material.dart';
import 'package:store_app/products_display.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Products'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
//                padding: EdgeInsets.only(top: 8.0),
//                margin: EdgeInsets.only(top:10.0),
                height: MediaQuery.of(context).size.height,
                child: ProductsDetails(),
              ),
            ),
        ],
      ),
    );
  }
}
