import 'package:store_app/prod.dart';
import 'package:flutter/material.dart';
import 'package:store_app/products_display.dart';
import 'package:store_app/form2.dart';

//
class Products extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_price;
  final prod_detail_picture;

  Products({
    this.prod_detail_name,
    this.prod_detail_price,
    this.prod_detail_picture
  });
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.shopping_cart),
        //     color: Colors.white,
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: new ListView(
        children: [
          new Container(
            height: MediaQuery.of(context).size.width/2.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.prod_detail_name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.prod_detail_price}")
                      ),
                    ],
                  ),
                ),
              ),),
          ),
          Row(
            children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                        title: Text("Quantity"),
                      content: Text("Choose the quantity"),
                      actions: [
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
            )
            ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new ShowForm()));
                      },
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    //Will send to form
                    child: Text("Buy now"),
                  ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){},),
            ],
          ),
          Divider(),
          new ListTile(
            title: Text("Product details"),
            subtitle: Text("Yummy Treats"),
          )
        ],
      ),
    );
  }
}