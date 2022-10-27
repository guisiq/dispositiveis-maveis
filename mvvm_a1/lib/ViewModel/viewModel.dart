import 'package:mvvm_a1/api/api.dart' as api;

class ViewModel{
  
  static bool login(String email, String senha){
    if(email == "admin" && senha =="1234") {
      return true;
    }
    return false;
  }

  static Future<Map>  find(String cep) {
    return api.fetch("https://brasilapi.com.br/api/cep/v1/" + cep) ;
  }
}