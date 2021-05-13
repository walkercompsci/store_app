import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'info.dart';
import 'confirm.dart';
//
class TextForm extends StatefulWidget {
  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final _formKey = GlobalKey<FormState>();
  Info info = Info();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width/2.0;
    return Form(
        key: _formKey,
        child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: size,
                child: MyTextFormField(
                  hintText: 'First Name',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter First name';
                    }
                    return null;
                    },
                  onSaved: (String value){
                    info.firstName = value;
                    },
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: size,
                child: MyTextFormField(
                  hintText: 'Last Name',
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please enter Last Name';
                    }
                    return null;
                    },
                  onSaved: (String value){
                    info.lastName = value;
                    },
                ),
              ),
            ],
          ),
          MyTextFormField(
            hintText: 'Email',
            isEmail: true,
            validator: (String value) {
              if (!validator.isEmail(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            onSaved: (String value){
              info.email = value;
            },
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              print('pressed');
              if(_formKey.currentState.validate()) {
                _formKey.currentState.save();

                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Confirm(
                      info: this.info,))
                );
              }
              },
            child: Text('Submit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
        ),
    );
  }
}
// ScaffoldMessenger
//     .of(context)
//     .showSnackBar(SnackBar(content: Text('Processing Data')));
//}

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

