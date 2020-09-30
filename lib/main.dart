import 'package:flutter/material.dart';
import 'package:Notes/begin.dart';
import 'package:Notes/contacts.dart';
import 'package:Notes/mission.dart';
import 'package:Notes/pictures.dart';
import 'package:Notes/products.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/begin': (context) => Begin(),
    '/mission': (context) =>  Mission(),
    '/pictures': (context) => Pictures(),
    '/contacts': (context) => Contacts(),
    '/products': (context) => Products(),
  },
));



