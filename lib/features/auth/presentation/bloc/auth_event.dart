part of 'auth_bloc.dart';

abstract class AuthEvent {}

class InitLogin extends AuthEvent {}

class PopEvent extends AuthEvent {}

class SetPassword extends AuthEvent {
  String cpf;
  SetPassword({required this.cpf});
}

class LoginEvent extends AuthEvent {
  String password;

  LoginEvent({required this.password});
}

class ErrorLoginEvent extends AuthEvent {
  String? msg;

  ErrorLoginEvent({this.msg});
}

class SucessLoginEvent extends AuthEvent {
  User user;

  SucessLoginEvent({required this.user});
}
