import 'package:flutter/material.dart';

class FormIsianVendor extends StatefulWidget {
  @override
  _FormIsianVendorState createState() => _FormIsianVendorState();
}

class _FormIsianVendorState extends State<FormIsianVendor> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter Your E-Mail',
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty || !value.contains('@')) {
                return 'Invalid email!';
              }
              return null;
            },
            onSaved: (value) {},
          ),
        )
      ],
    );
  }
}
