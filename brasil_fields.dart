import 'package:flutter/material.dart';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';


class Mascara extends StatefulWidget {
  const Mascara({ key }) : super(key: key);

  @override
  _MascaraState createState() => _MascaraState();
}

class _MascaraState extends State<Mascara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        children: [
          Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          DataInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          focusColor: Colors.pinkAccent[400],
                          labelText:
                              "Data de nascimento",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    
          Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter(),
                        ],
                        decoration: InputDecoration(
                          labelText: "Celular",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
        ]
      )
    );
  }
}