Future<void> main() async {
  print('INICIO');

  final intervalo = Duration(seconds: 2);
  final stream = Stream<int>.periodic(intervalo, callback);

  // await for --> espera a stream receber um valor para então executar o for
  await for (var i in stream) {
    print(i);
  }

  print('FIM');
}

int callback(value) {
  print('valor do callback $value');
  return (value + 1) * 2;
}
