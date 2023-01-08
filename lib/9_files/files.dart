import 'dart:io';

Future<void> main() async {
  var file = File('lib/9_files/files/file.txt');

//Leitura Sincrona
  var fileDataSincrona = file.readAsStringSync();
  print(fileDataSincrona);

//Leitura Assincrona
  var fileDataAssincrona = await file.readAsString();
  print(fileDataAssincrona);

//Leitura Sincrona Por Linha
  var fileDataSincronaPorLinha = file.readAsLinesSync();
  print(fileDataSincronaPorLinha);

//Leitura Assincrona Por Linha
  var fileDataAssincronaPorLinha = await file.readAsLines();
  print(fileDataAssincronaPorLinha);

//Escrevendo Dentro de um Arquivo
  var file2 = File('lib/9_files/files/file2.txt');
  await file2.writeAsString('Teste de escrita em arquivo\n',
      mode: FileMode.append);

  // Escrevendo diversas informações no arquivo
  var listNomes = ['Geovana', 'Lucas', 'Cicero', 'Libilly', 'Ryan', 'Jayne'];
  var file3 = File('lib/9_files/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append );

  listNomes.forEach((nome)=> writeFile.write('$nome \n') );
}
