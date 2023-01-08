import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserType {
  final String name;
  final String id;
  final String userId;
  UserType({
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

  factory UserType.fromMap(Map<String, dynamic> map) {
    return UserType(
      name: map['name'] as String,
      id: map['id'] as String,
      userId: map['userId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserType.fromJson(String source) => UserType.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserType(name: $name, id: $id, userId: $userId)';
}

