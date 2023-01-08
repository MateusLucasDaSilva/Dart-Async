Future<void> main() async{

var processo = await processo1();
print(processo);

try{
   await processo2();

}on Exception catch(error){
  print('error controlado $error');
}





}

Future<String> processo1() {
  print('incinio do processo 1');
  return Future.delayed(Duration(seconds: 2), () =>  'Fim do processo 1');
}

Future<String> processo2() {
  print('incinio do processo 2');
  return Future.delayed(Duration(seconds: 2), () =>  throw Exception());
}