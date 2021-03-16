import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'package:url_launcher/url_launcher.dart';

class TextForm extends StatefulWidget {
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final _formKey = GlobalKey<FormState>();

  // final Uri params = Uri(
  //   scheme: 'mailto',
  //   path: 'santeala000@warren.k12.in.us',
  //   query: 'test test', //add subject and body here
  // );
  //
  // var url = params.toString();
  // _launchEmail() async {
  //   if (await canLaunch(url))  {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width/2.0;
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.topCenter,
            width: size,
            child: MyTextFormField(
              hintText: 'First Name',
              validator: (hintText) {
                if (hintText.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
                },
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              // ignore: unnecessary_statements
              const url = "mailto:alansantes20@gmail.com";
              if(await canLaunch(url)){
                await canLaunch(url);
              }else{
                throw "could not launch $url";
              }
              //sendEmail();
              if(_formKey.currentState.validate()){
                ScaffoldMessenger
                    .of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
              },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class sendEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        );
  }
}



class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isEmail = false,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}



