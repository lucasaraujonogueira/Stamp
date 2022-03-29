import 'package:flutter/material.dart';

class UserModel {
  String name;
  String lastname;
  int cep;
  String password;
  int phone;
  String email;

  UserModel(
      {required this.name,
      required this.lastname,
      required this.cep,
      required this.password,
      required this.phone,
      required this.email});
}
