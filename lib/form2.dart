import 'package:flutter/material.dart';

import 'package:store_app/form.dart';


class ShowForm extends StatefulWidget {
  @override
  _ShowFormState createState() => _ShowFormState();
}

class _ShowFormState extends State<ShowForm> {
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
