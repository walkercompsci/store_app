import 'package:flutter/material.dart';

//class getProducts {
  //final
//}

class ProductDetails extends StatefulWidget {
  //final product_detail_name;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
              onPressed: () {},
          ),
      ],
      ),
    );
  }
}
