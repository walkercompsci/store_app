import 'package:store_app/prod.dart';
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
      body: ListView(
        shrinkWrap: false,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.only(top: 8.0),
              //margin: EdgeInsets.only(top:10.0),
              height: MediaQuery.of(context).size.height,
              child: ProductsDetails(),
            ),
          ),
        ],
      ),
    );
  }
}