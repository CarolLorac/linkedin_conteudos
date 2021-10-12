// versão do meu flutter: 2.5.1

import 'package:flutter/material.dart';

class UtilizandoRadioButton extends StatefulWidget {
  const UtilizandoRadioButton({Key? key}) : super(key: key);

  @override
  _UtilizandoRadioButtonState createState() => _UtilizandoRadioButtonState();
}

class _UtilizandoRadioButtonState extends State<UtilizandoRadioButton> {
  String escolhaVariavel = "";
  String textoExibicao = "";

  void verificar() {
    if (escolhaVariavel == "m") {
      setState(() {
        textoExibicao = "Masculino escolhido";
      });
    } else {
      setState(() {
        textoExibicao = "Feminino escolhido";
      });
    }
  }
  /* 
 Como exibir no console de depuração(exemplo que está no linkedin):
  void verificar() {
    if (escolhaVariavel == "m") {
     print("Masculino escolhido");
    } else {
     print("Feminino escolhido");
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Utilizando Radio Button"),
      ),
      body: Column(
        children: <Widget>[
          RadioListTile(
              title: const Text("Masculino"),
              value: "m",
              groupValue: escolhaVariavel,
              onChanged: (escolha) {
                setState(() {
                  escolhaVariavel = escolha as String;
                });
              }),
          RadioListTile(
              title: const Text("Feminino"),
              value: "f",
              groupValue: escolhaVariavel,
              onChanged: (escolha) {
                setState(() {
                  escolhaVariavel = escolha as String;
                });
              }),
          Padding(
            //botão
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                onPressed: () {
                  verificar(); //chamando método que verifica a escolha do usuario
                },
                child: const Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Text(
            textoExibicao, // exibindo a variavel que foi utlizada no método verificar
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
