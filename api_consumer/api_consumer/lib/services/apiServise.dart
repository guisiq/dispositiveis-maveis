import 'package:api_consumer/bank.dart';
import 'package:dio/dio.dart';
class BanckWork{
  //
 
  static  Future<List<Bank>?> getBancks() async {
    try {
      List<Bank> retorno = [];
      var response = await Dio().get('https://brasilapi.com.br/api/banks/v1');
      if (response.statusCode == 200) {  
        for (var element in response.data) {
          retorno.add(Bank.fromJson(element));
        }
      }
      return retorno;
    } catch (e) {
      print(e);
      return null;
    }

  }
}