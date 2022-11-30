import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  @override
  Widget build(BuildContext context) {

   // double largura = MediaQuery.of(context).size.width;
   // double altura = MediaQuery.of(context).size.height;

    //O GridView cria automaticamente colunas e linha e tbm o scrowview
    return GridView.count(
      crossAxisCount: 2,  //Definimos a quantidade de colunas que queremos
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,  //Esse aspectRatio define a razão de largura e altura.
      //scrollDirection: Axis.vertical,   //o MediaQuery pega o valor da altura e largura do aparelho que está rodando o app para
      children: <Widget>[     //que possamos ter o mesmo espaçamento e layout em qualquer tamanho de aparelho
        GestureDetector(
          onTap: (){},
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: (){},
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: (){},
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: (){},
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: (){},
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: (){},
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
