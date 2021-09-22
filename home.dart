import 'package:flutter/material.dart';
import 'package:home/oi.dart';
import 'package:home/teste.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        title: const Text(
          'Linkedin',
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.grey,
                size: 28,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notificacoes()));
              },
            ),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.person, color: Colors.grey, size: 30),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Cadastro()));
          },
        ),
      ),
    );
  }
}
