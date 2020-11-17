import 'package:flutter/material.dart';

class User {
  final String name;
  final String email;

  User({@required this.name, @required this.email});

  @override
  @override
  String toString() => 'Usuario: { name: $name, email: $email}';
}
