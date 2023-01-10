Future<void> main() async {
  final intervalo = Duration(seconds: 1);
  var stream = Stream<int>.periodic(intervalo, callback);

  print('INICIO');

  stream = stream.take(5);

  // await ToList --> espera todos os loops da stream e depois preenche uma lista
  var data = await stream.toList();
  print(data);

  print('FIM');
}

int callback(value) {
  print('valor do callback $value');
  return (value + 1) * 2;
}
