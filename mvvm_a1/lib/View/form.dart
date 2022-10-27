import 'package:flutter/material.dart';
import 'package:mvvm_a1/ViewModel/viewModel.dart';

class FormFood extends StatefulWidget{
  @override
  _FormFoodState createState() => _FormFoodState();
}

class _FormFoodState extends State<FormFood>{

  String _cep = "";
  dynamic _endereco ;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Cadastro de Alimentos')),

            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment:  MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                      autofocus: true,
                      onChanged: (String value){
                        _cep = value;
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.blue, fontSize: 30),
                      decoration: InputDecoration(
                        labelText:"Cep",
                        labelStyle: TextStyle(color: Colors.black),
                      )
                  ),

                  Text(

                   _endereco['state'] ?  _endereco['state'] : " " ,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
),

                  ButtonTheme(
                    height: 60.0,
                    child: FloatingActionButton(
                      onPressed: () => { _endereco = ViewModel.find(_cep) },
                      shape: new RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                      child: Text(
                        "Pesquisar",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )
                  ),
                ]
            )
        )
    ) ;
  }
}