// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

Future<void> main() async {
  final streamController = StreamController<Pessoa>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream.listen((pessoa) { 
    print('Seja bem vindo $pessoa');

  });

      var numeros = List.generate(20, (index) => index);

      for (var numero in numeros) {
        print('enviando Pessoa:');
        inStream.add(Pessoa(nome: 'Mateus Lucas $numero
        '));
    
        
      }

      await streamController.close();
}

class Pessoa {
  final String nome;
  Pessoa({
    required this.nome,
  });

  @override
  String toString() => 'Pessoa(nome: $nome)';
}
