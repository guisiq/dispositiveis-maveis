import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaA extends StatelessWidget{
  TextEditingController textControllerPesso = TextEditingController();
  TextEditingController textControllerAltura = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TelaA')),
      body: Center(
        child:Column(
          children: [
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'altura(m)',
                  // hintText: 'produ x'
                ),
                controller: textControllerAltura),
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'peso(Kg)',
                  // hintText: 'produ x'
                ),
                controller: textControllerPesso),
            ElevatedButton(
              child: Text('Abrir rota(tela B)'),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaB(num.parse(textControllerPesso.text),num.parse(textControllerAltura.text))));
              }
        )]
      )
    )
    );
  }

}

class TelaB extends StatelessWidget{
  num peso = 0;
  num altura = 0 ;

  TelaB(this.peso,this.altura);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
        title: Text('TelaB')),
        body: Center(

            child:Column(
                children: [
                  Text("seu imc e :"),

                  Text((peso/(altura*altura)).toString()),
                  ElevatedButton(
                      child: Text('Abrir rota(tela B)'),
                      onPressed: () {
                        Navigator.pop(context);
                      }
                  )
          ])
        )

    );
  }

}