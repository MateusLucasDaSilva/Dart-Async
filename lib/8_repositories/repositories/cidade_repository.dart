import 'package:dart_async/8_repositories/models/cidade_model.dart';
import 'package:http/http.dart' as http;

class CidadeRepository {
  Future<Cidade> buscarCidade() async {
    var url = 'https://viacep.com.br/ws/01001000/json/';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Cidade.fromJson(response.body);
    } else {
      return throw Exception();
    }
  }
}
