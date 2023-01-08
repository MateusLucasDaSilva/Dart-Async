// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:dart_async/8_repositories/models/usertype_model.dart';

class User {
  final String id;
  final String name;
  final String userName;
  final List<UserType> userTypes;
  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });
  






  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'userName': userName,
      'userTypes': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      name: map['name'] as String,
      userName: map['userName'] as String,
      userTypes: List<UserType>.from((map['userTypes'] as List<int>).map<UserType>((x) => UserType.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}

//{
//"id":"1",
//"name":"Madalyn Dibbert",
//"username":"Eugenia.Heller43",
//"user_types":[{
// "name":"Nora Ankunding",
// "id":"1",
// "userId":"1"}]}

/*
userTypes: map['user_types'].map<UserType>((type){
        return UserType.fromMap(type);

      }).toList() ?? []
    );
    */