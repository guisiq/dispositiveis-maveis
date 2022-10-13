import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao_telas/components/PessoaComponent.dart';
import 'package:navegacao_telas/models/Pessoa.dart';

class ListaPessoa {
  
  
  
  
  static Widget createElement(List<Pessoa> pessoas) {
    // TODO: implement createElement
    return ListView.builder(
      padding: const EdgeInsets.all(8),

      itemCount: pessoas.length,
      itemBuilder: (BuildContext context,int index) {
        return PessoaComponent.createElement(pessoas[index]);
      }
    );
  }

}
