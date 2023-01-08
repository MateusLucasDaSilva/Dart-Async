import 'package:dart_async/7_models/cidade.dart';
import 'package:dart_async/7_models/cidade_mais_facil.dart';
import 'package:dart_async/7_models/user.dart';
import 'package:dart_async/7_models/user_mais_facil.dart';
import 'package:dart_async/8_repositories/models/usertype_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  //await buscarCep();
 // await buscarPessoa();
  //wait buscarTypePessoa();
  //buscarCidade();

  buscarPessoaMaisFacil();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var cidade = Cidade.fromJson(response.body);
    //print(cidade);
  
  }
}
Future<void> buscarPessoa()async{
 var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await http.get(Uri.parse(url));
  

  if(response.statusCode == 200){
    var usuario = User.fromJson(response.body);
    print(usuario);
  }


}

Future<void> buscarTypePessoa()async{
 
 var response = {"name": "mateus", "id" : "1111", "userId" : "111"}.toString();
    var usuario = UserType.fromJson(response);
    print(usuario);
  


}

Future<void> buscarCidade() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var cidade = CidadeMaisFacil.fromJson(response.body);
    print(cidade);
  
  }
}
Future<void> buscarPessoaMaisFacil()async{
 var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await http.get(Uri.parse(url));
  

  if(response.statusCode == 200){
    var usuario = UsermaisFacil.fromJson(response.body);
    print('Objeto:');
    print(usuario);
    print('');
    print('');
    print('Json:');
    print(usuario.toJson());
    print('');
    print('');
    print('Map:');
    print(usuario.toMap());
   


  }
}