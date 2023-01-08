Future<void> main()async{

  var listNomes = ['Mateus', 'Lucas', 'Silva'];

  for (var nomes  in listNomes) {
    print(await saudacao(nomes));
    
  }

  var nomesFuturo = listNomes.map((nome) => saudacao(nome)).toList();

print('inicio');
var saudacoes = await Future.wait(nomesFuturo);
print(saudacoes);
print('fim');



}

Future<String> saudacao(String nome) async{

  return Future.delayed(Duration(seconds: 1), ()=> 'Ola $nome');
}