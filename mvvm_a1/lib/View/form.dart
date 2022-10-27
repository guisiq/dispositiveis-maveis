 import 'package:flutter/material.dart';


class FormFood extends StatefulWidget{
     @override
     _FormFoodState createState() => _FormFoodState();
}

class _FormFoodState extends State<FormFood>{
 
    String _nome = "";
    num    _peso = 0;
    num    _caloria = 0;
    String _obs = "";

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
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Nome",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Peso",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Email",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Caloria",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
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