import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_consumer/component/BankComponent.dart';
import 'package:api_consumer/bank.dart';

class BankListComponent {
  static Widget createElement(List<Bank> banks) {
    // TODO: implement createElement
    return ListView.builder(
      padding: const EdgeInsets.all(8),

      itemCount: banks.length,
      itemBuilder: (BuildContext context,int index) {
        return BankComponent.createElement(banks[index]);
      }
    );
  }

}