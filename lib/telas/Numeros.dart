import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  final player = AudioCache();

//Método que executa os áudios
  executar(String nomeAudio){
    player.play('audios/'+ nomeAudio + '.mp3');
  }
//Fazendo o precarregamento dos audios par não dar delay na primeira execução
  @override
  void initState() {
    player.loadAll(
        ['1.mp3', '2.mp3', '3.mp3', '4.mp3', '5.mp3', '6.mp3']
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,  //Definimos a quantidade de colunas que queremos
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,  //Esse aspectRatio define a razão de largura e altura.
      //scrollDirection: Axis.vertical,   //o MediaQuery pega o valor da altura e largura do aparelho que está rodando o app para
      children: <Widget>[     //que possamos ter o mesmo espaçamento e layout em qualquer tamanho de aparelho
        GestureDetector(
          onTap: (){
            executar('1');
          },
          child: Image.asset("assets/imagens/1.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('2');
          },
          child: Image.asset("assets/imagens/2.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('3');
          },
          child: Image.asset("assets/imagens/3.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('4');
          },
          child: Image.asset("assets/imagens/4.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('5');
          },
          child: Image.asset("assets/imagens/5.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('6');
          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }
}
