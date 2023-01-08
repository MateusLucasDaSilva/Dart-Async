import 'package:dart_async/8_repositories/repositories/cidade_repository.dart';
import 'package:dart_async/8_repositories/repositories/user_repository.dart';

Future<void> main() async {

  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();
  
try {
  var cidade = await cidadeRepository.buscarCidade();
  print(cidade);

  var usuario = await userRepository.buscarUser();
  print(usuario);
 
} catch (e) {
  print('Erro ao buscar cidade $e');
  throw Exception();
}

}