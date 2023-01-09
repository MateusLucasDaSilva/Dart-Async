import 'dart:ffi';

Future<void> main() async {
  final intervalo = Duration(seconds: 1);
  var stream = Stream<int>.periodic(intervalo, callback);

  print('INICIO');
  stream = stream.take(4).skip(2);

  // await for --> espera a stream receber um valor para então executar o for
  await for (var i in stream) {
    print('valor no await for: $i');
    print('valor: $i');
  }

  print('FIM');
}

int callback(value) {
  print('valor do callback $value');
  return (value + 1) * 2;
}
