void main() {
  var cont = 0;
  print('processo inicado');
  print('chamndo método futuro');
  futuro();
  print('inicando while:');
  while (cont < 10) {
    print(cont);
    cont++;
  }
  print('finalizando while!');
}

void futuro() {
  Future.delayed(Duration(seconds: 2), (() {
    print('Processo futuro finalizado');
  }));
}
