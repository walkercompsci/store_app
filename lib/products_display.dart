import 'package:flutter/material.dart';
//import 'package:store_app/products.dart';


class ProductsDetails extends StatefulWidget {
  @override
  _ProductsDetailsState createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {

  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name": "Treats",
      "picture": "assets/dog3.jpg",
      "price": 20,
    },
    {
      "name": "Treat",
      "picture": "assets/dog3.jpg",
      "price": 20,
    },
    {
      "name": "Trea",
      "picture": "assets/dog3.jpg",
      "price": 20,
    },
    {
      "name": "Tre",
      "picture": "assets/dog3.jpg",
      "price": 20,
    },
    {
      "name": "Tr",
      "picture": "assets/dog3.jpg",
      "price": 20,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index){
        return Single_product(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_price: product_list[index]['price'],
        );
      });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  final Function add;
//  final Products products;

  Single_product({
    this.product_name,
    this.product_picture,
    this.product_price,
    this.add,
//    this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Creates an animation when going to another page
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$product_price",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover),
              ),
            ),
          )),
    );
  }
}