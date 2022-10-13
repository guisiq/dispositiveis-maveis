import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_telas/models/Pessoa.dart';

class PessoaComponent {
  
  static Widget createElement(Pessoa _Pessoa) {
    return Container(
      margin:  new EdgeInsets.all(8),
      
      height: 50,
      color: Colors.amber[600],
      child:  Center(

        child:Column(
          
          children: [
            Text(" Nome : ${_Pessoa.nome}"),
            Text(" Apelido : ${_Pessoa.apelido}"),
            Text(" Idade : ${_Pessoa.idade}")
            ]
          )
      ),
    );
  }

}