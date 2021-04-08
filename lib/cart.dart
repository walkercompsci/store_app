import 'package:flutter/material.dart';
import 'package:store_app/cart_products.dart';
import 'form2.dart';

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
        title: Text("Cart",
          style: TextStyle(
              fontFamily: 'Poppins'
          ),
        ),
      ),
      body: Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: Text("Total: ",
                    style: TextStyle(
                        fontFamily: 'Poppins'
                    ),
                  ),
                  subtitle: Text("\$8",
                    style: TextStyle(
                        fontFamily: 'Poppins'
                    ),
                  ),
                )),
            Expanded(
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new ShowForm()));
                    },
                  child: Text("Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                    ),
                  ),
                  color: Colors.blue,
                ),
            ),
          ],
        ),
      ),
    );
  }
}




