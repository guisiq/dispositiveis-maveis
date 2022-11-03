import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_consumer/bank.dart';

class BankComponent {
  
  static Widget createElement(Bank _bank) {
    return Container(
      margin:  new EdgeInsets.all(8),
      
      height: 80,
      color: Colors.amber[600],
      child:  Center(

        child:Column(
          
          children: [
            Text(" código : ${_bank.code}"),
            Text(" Nome : ${_bank.fullName}"),
            Text(" ispb : ${_bank.ispb}")
            ]
          )
      ),
    );
  }

}