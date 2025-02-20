import 'dart:convert';

class RegisterRequestModel {
  final String email;
  final String password;
  final String confirmationPassword;
  RegisterRequestModel({
    required this.email,
    required this.password,
    required this.confirmationPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'confirmationPassword': confirmationPassword,
    };
  }

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      email: map['email'] as String,
      password: map['password'] as String,
      confirmationPassword: map['confirmationPassword'] as String,
    );
  }

  String toJson() => json.encode(toMap());
}
