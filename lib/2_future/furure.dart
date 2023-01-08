void main() {
  print('inicio do processo 0');

// Status --> (Incompleto, compelto(com valor, com erro))
// concluido com valor --> .then
// concluido com erro --> CatchError ou OnError
// .whenComplete será sempre executadO !

  processo1().then((mensagem) {
    print(mensagem);
  }).catchError((erro) {
    print('aqui deu erro $erro');
  }).whenComplete(() {
    print('deu erro mais completou ');
  });

  processo2().then((mensagem) {
    print(mensagem);
  }, onError: (erro) => print('aqui deu erro'));

  var cont = 0;
  while (cont < 4) {
    print(cont);
    cont++;
  }
  print('fim do processo 0');
}

Future<String> processo1() {
  print('incinio do processo 1');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}

Future<String> processo2() {
  print('incinio do processo 2');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}
