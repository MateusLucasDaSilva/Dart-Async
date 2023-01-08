
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  await buscarCepError();
  await buscarCep();
  await buscarPosts();
  await salvarPost();
  await atualizarPost();
 
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var convertData = convert.jsonDecode(response.body);

    if (convertData is Map) {
      print(convertData['cep']);
    }
  }
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);

    if (responseData is List) {
      responseData.forEach(((element) => print(element['title'])));
    }
  }
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var json = {'title': 'teste', 'body': 'teste corpo', 'userId': 1};

  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(json));

  print(response.statusCode);
  print(response.body);
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var json = {'id': 1, 'title': 'teste', 'body': 'teste corpo', 'userId': 1};

  var response = await http.put(Uri.parse(url), body: convert.jsonEncode(json));

  print(response.statusCode);
  print(response.body);
}

Future<void> buscarCepError() async {
  var url = 'https://viacep.com.br/ws/999999/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var convertData = convert.jsonDecode(response.body);

    if (convertData is Map) {
      print(convertData['cep']);
    }
  }else{print('Ops, Houve um erro ${response.reasonPhrase}');}
}