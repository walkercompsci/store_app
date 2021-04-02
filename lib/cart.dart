import 'package:flutter/material.dart';
import 'package:store_app/cart_products.dart';

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
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Cart"),
      ),
      body: Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: Text("Total: "),
                  subtitle: Text("\$8"),
                )),
            Expanded(
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
                    },
                  child: Text("Check Out",
                    style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                ),
            ),
          ],
        ),
      ),
    );
  }
}




