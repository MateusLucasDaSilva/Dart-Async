// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

//Recebe um mapa e transforma numa Cidade e retorna !
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'],
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }
/*
  factory Cidade.fromJson(String source) {
    var jsonMap = jsonDecode(source);
    return Cidade.fromMap(jsonMap);
  }
  */

// Recebe um json e retorna uma Cidade !
  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

// trabsforma Cidade em um mapa de chave e valor
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

// transforma Cidade em um Json !
  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
