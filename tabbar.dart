import 'package:app_doevida/campanha.dart';
import 'package:app_doevida/experiencias.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({ key }) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
         appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          //preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            //automaticallyImplyLeading: false,
            //title: Text("Campanhas e experiências", style: TextStyle(fontSize: 24, color: Colors.black),),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.cyan,
              labelColor: Colors.black,
              indicatorWeight: 2.5,
              labelStyle: TextStyle(fontSize: 20),
              tabs: <Widget>[
                Tab(
                  text: 'Campanhas',
                ),
                Tab(
                  text: 'Experiências',
                )
                ],),),),
          body: TabBarView(
            children: <Widget> [
              new Campanha(),          
              new Experiencias(),
            ],
          ),
      ),
      );
      
  }
}