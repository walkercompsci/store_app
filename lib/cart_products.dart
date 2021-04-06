import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_purchased = [
    {
      "name": "Treats",
      "picture": "assets/dog1.jpg",
      "price": 10,
      "quantity" : 1,
    },
    {
      "name": "Treat",
      "picture": "assets/dog2.jpg",
      "price": 10,
      "quantity" : 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_purchased.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: product_purchased[index]["name"],
            cart_prod_price: product_purchased[index]["price"],
            cart_prod_picture: product_purchased[index]["picture"],
            cart_prod_qty: product_purchased[index]["quantity"],
          );
        }
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;

  Single_cart_product({
   this.cart_prod_name,
   this.cart_prod_picture,
   this.cart_prod_price,
   this.cart_prod_qty
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Expanded(
        child: ListTile(
          leading: Image.asset(cart_prod_picture, width: 80.0, height: 80.0,),
          title: Text(cart_prod_name),
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("\$${cart_prod_price}",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          trailing: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              Text("$cart_prod_qty"),
              IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}

