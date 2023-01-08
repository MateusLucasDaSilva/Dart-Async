import 'dart:async';

void main(){

print('Inicio do main');

scheduleMicrotask(()=> print('Executou micritesk #1'));
Future.delayed(Duration(seconds: 1), (){
  print(DateTime.now());
  print('Executou o Future 1');
});
Future(() => print('Executando o Future #2'));


print('Fim do main');
}


/**
 * Event
 * Future.dalay iniciar
 * Future #2
 * 
 * 
 * Microtask
 * Main -> Ok
 * Microtask #1 -> Ok
 * 
 */