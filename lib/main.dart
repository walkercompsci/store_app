import 'package:flutter/material.dart';
import 'package:store_app/begin.dart';
import 'package:store_app/contacts.dart';
import 'package:store_app/mission.dart';
import 'package:store_app/pictures.dart';
import 'package:store_app/prod.dart';
import 'package:store_app/cart.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/begin',
  routes: {
    '/begin': (context) => Begin(),
    '/mission': (context) =>  Mission(),
    '/pictures': (context) => Pictures(),
    '/contacts': (context) => Contacts(),
    '/products': (context) => Prod(),
    '/cart': (context) => Cart(),
  },
));



