import 'package:app_bottom_navig_bar/tela1.dart';
import 'package:app_bottom_navig_bar/tela2.dart';
import 'package:app_bottom_navig_bar/tela3.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    //telas que serão exibidas
    List<Widget> telas = [
      const Tela1(),
      const Tela2(),
      const Tela3(),
    ];

    return Scaffold(
      body: telas[indiceAtual], //exibindo tela referente ao ícone
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceAtual, //indica em qual tela está
        onTap: (indice) {
          setState(() {
            indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType
            .fixed, //se o usar o shifting, o estilo da barra de navegação será diferente
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        fixedColor: Colors.pinkAccent[400],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: indiceAtual == 0 ? Colors.pinkAccent[400] : Colors.grey,
            ),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.whatshot,
              color: indiceAtual == 1 ? Colors.pinkAccent[400] : Colors.grey,
            ),
            label: "Fogo",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: indiceAtual == 2 ? Colors.pinkAccent[400] : Colors.grey,
            ),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }
}
