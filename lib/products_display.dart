import 'package:flutter/material.dart';
import 'package:store_app/prod.dart';
import 'package:store_app/products.dart';
//
class ProductsDetails extends StatefulWidget {
  @override
  _ProductsDetailsState createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {

  // ignore: non_constant_identifier_names
  var prod_list = [
    {
      "name": "Treats",
      "picture": "assets/dog1.jpg",
      "price": 10,
    },
    {
      "name": "Treat",
      "picture": "assets/dog2.jpg",
      "price": 20,
    },
    {
      "name": "Trea",
      "picture": "assets/dog3.jpg",
      "price": 30,
    },
    {
      "name": "Tre",
      "picture": "assets/dog1.jpg",
      "price": 40,
    },
    {
      "name": "Tr",
      "picture": "assets/dog2.jpg",
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: prod_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prod_name: prod_list[index]['name'],
          prod_picture: prod_list[index]['picture'],
          prod_price: prod_list[index]['price'],
        );
      });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Creates an animation when going to another page
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //passing values to new page
                  builder: (context) => new Products(
                    prod_detail_name: prod_name,
                    prod_detail_price: prod_price,
                    prod_detail_picture: prod_picture,
              ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover),
              ),
            ),
          )),
    );
  }
}