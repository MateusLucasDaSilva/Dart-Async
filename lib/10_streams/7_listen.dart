Future<void> main() async {
  final intervalo = Duration(seconds: 1);
  var stream = Stream<int>.periodic(intervalo, callback);

  print('INICIO');

  stream = stream.take(5);
  stream.listen((numero) {
    print('Ouvindo pelo listen $numero');
  });

  print('FIM');
}

int callback(value) {
  print('valor do callback $value');
  return (value + 1) * 2;
}
