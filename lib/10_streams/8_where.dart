Future<void> main() async {
  final intervalo = Duration(seconds: 1);
  var stream = Stream<int>.periodic(intervalo, callback);

  print('INICIO');

  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print('Ouvindo pelo listen $numero');
  });

  print('FIM');
}

int callback(value) {
  print('valor do callback $value');
  return (value + 1) * 2;
}
