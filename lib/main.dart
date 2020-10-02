import 'package:flutter/material.dart';
import 'package:store_app/begin.dart';
import 'package:store_app/contacts.dart';
import 'package:store_app/mission.dart';
import 'package:store_app/pictures.dart';
import 'package:store_app/products.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/begin',
  routes: {
    '/begin': (context) => Begin(),
    '/mission': (context) =>  Mission(),
    '/pictures': (context) => Pictures(),
    '/contacts': (context) => Contacts(),
    '/products': (context) => Products(),
  },
));



