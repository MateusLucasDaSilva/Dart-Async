// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_async/7_models/usertype_mais_facil.dart';

class UsermaisFacil {

  final String id;
  final String name;
  final String userName;
  final List<UserTipesMaisFacil> userTypesMaisFacil;
  UsermaisFacil({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypesMaisFacil,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'userName': userName,
      'user_types': userTypesMaisFacil.map((x) => x.toMap()).toList(),
    };
  }

  factory UsermaisFacil.fromMap(Map<String, dynamic> map) {
    return UsermaisFacil(
      id: map['id'] as String,
      name: map['name'] as String,
      userName: map['username'] as String,
      userTypesMaisFacil: List<UserTipesMaisFacil>.from((map['user_types'] as List<dynamic>).map<UserTipesMaisFacil>((x) => UserTipesMaisFacil.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory UsermaisFacil.fromJson(String source) => UsermaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsermaisFacil(id: $id, name: $name, userName: $userName, userTypesMaisFacil: $userTypesMaisFacil)';
  }
}
