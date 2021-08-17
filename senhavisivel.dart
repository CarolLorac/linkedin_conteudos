//COMO DEIXAR A SENHA VISIVEL E INVISIVEL
import 'package:flutter/material.dart';

class SenhaVis extends StatefulWidget {
  const SenhaVis({key}) : super(key: key);

  @override
  _SenhaVisState createState() => _SenhaVisState();
}

class _SenhaVisState extends State<SenhaVis> {
  bool _showPassword = false;   //senha visivel e invisivel
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(top: 10, right: 5, left: 5),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(blurRadius: 3, color: Colors.black26)
                    ]),
                child: TextFormField(
                    obscureText: _showPassword == false? true: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key, color: Colors.grey[300]),
                        hintText: 'Senha',
                        suffixIcon: GestureDetector(     //senha visivel e invisivel
                          child: Icon(_showPassword == false? Icons.visibility_off: Icons.visibility),
                          onTap: (){
                            setState((){
                              _showPassword = !_showPassword;
                            });
                          },
                        ),   
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        )),
                ),
              ),               
            ],
          )),
      )
    );
  }
}
