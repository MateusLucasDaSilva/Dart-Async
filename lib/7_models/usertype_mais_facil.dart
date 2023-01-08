import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserTipesMaisFacil {

  final String name;
  final String id;
  final String userId;
  UserTipesMaisFacil({
    required this.name,
    required this.id,
    required this.userId,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'userId': userId,
    };
  }

  factory UserTipesMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserTipesMaisFacil(
      name: map['name'] as String,
      id: map['id'] as String,
      userId: map['userId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTipesMaisFacil.fromJson(String source) => UserTipesMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserTipesMaisFacil(name: $name, id: $id, userId: $userId)';
}
