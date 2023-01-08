import 'package:dart_async/8_repositories/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<User?> buscarUser() async {
    var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    } else {
      return throw Exception();
    }
  }
}
