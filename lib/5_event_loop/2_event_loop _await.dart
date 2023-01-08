import 'dart:async';

Future<void> main() async {

print('Inicio do main');

scheduleMicrotask(()=> print('Executou micritesk #1'));
await Future.delayed(Duration(seconds: 1), (){
  print(DateTime.now());
  print('Executou o Future #1');
});

scheduleMicrotask(()=> print('Executou micritesk #2'));
await Future(() => print('Executando o Future #2'));
await Future(() => print('Executando o Future #3'));

scheduleMicrotask(()=> print('Executou micritesk #3'));

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