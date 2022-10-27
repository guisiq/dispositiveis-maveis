 import 'package:flutter/material.dart';


class FormFood extends StatefulWidget{
     @override
     _FormFoodState createState() => _FormFoodState();
}

class _FormFoodState extends State<Form>{
 
    String _nome = "";
    num    _peso = 0;
    num    _caloria = 0;
    String _obs ="";

    @override
    Widget build(BuildContext context){
        return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Calculadora')),

        ),
        body: Column(
          mainAxisAlignment:  MainAxisAlignment.spaceAround,
          children: [
            Text('Nome'),
            TextField(
              onChanged: (text) {
                _nome = text;
            }),
            Text('Peso'),
            TextField(
              onChanged: (text) {
                _peso = num.parse(text);
            }),
            Text('Caloria'),
            TextField(
              onChanged: (text) {
                _caloria = num.parse(text);
            }),
             Text('Observações'),
             TextField(
              onChanged: (text) {
                _obs = text;
            }),
            ButtonTheme(
                  height: 60.0,
                  child: FloatingActionButton(
                    onPressed: () => { print("pressionei o botão"), },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(30.0)),
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ), 
                  ),
            ),
          ]
        )
      )
    ) ;
    }
}