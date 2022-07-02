part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class ValidatedCpf extends AuthState {
  final String cpf;

  ValidatedCpf({required this.cpf});
}

class SendingLogin extends AuthState {
  final String cpf;
  final String password;

  SendingLogin({
    required this.cpf,
    required this.password,
  });
}
