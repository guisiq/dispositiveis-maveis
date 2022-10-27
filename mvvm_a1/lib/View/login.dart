import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                      labelText:"Senha",
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
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ), 
                  ),
                ),
              ],
            ),
          ),
        )

    );
  }
}