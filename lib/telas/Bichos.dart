import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {

  final player = AudioCache();

//Método que executa os áudios
  executar(String nomeAudio){
    player.play('audios/'+ nomeAudio + '.mp3');
  }
//Fazendo o precarregamento dos audios par não dar delay na primeira execução
  @override
  void initState() {
    player.loadAll(
      ['cao.mp3', 'gato.mp3', 'leao.mp3', 'macaco.mp3', 'ovelha.mp3', 'vaca.mp3']
    );
    super.initState();
  }

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
          onTap: (){
            executar('cao');
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('gato');
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('leao');
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('macaco');
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('ovelha');
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: (){
            executar('vaca');
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
