import 'package:flutter/material.dart';
import 'package:store_app/form.dart';

class ShowForm extends StatefulWidget {
  @override
  _ShowFormState createState() => _ShowFormState();
}

class _ShowFormState extends State<ShowForm> {
  // firebase.initializeApp({
  //   apiKey: "AIzaSyAYwBWaKS7XtvviLCowTTmYl2Wq1Z6Hoto",
  //   authDomain: "store-front-9f1ad.firebaseapp.com",
  //   projectId: "store-front-9f1ad",
  // });
  // var db = firebase.firestore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Buy Form'),
    ),
    body: TextForm(),
    );
  }
}
