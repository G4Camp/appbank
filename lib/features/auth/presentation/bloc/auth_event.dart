part of 'auth_bloc.dart';

abstract class AuthEvent {}

class InitLogin extends AuthEvent {}

class PopEvent extends AuthEvent {}

class SetPassword extends AuthEvent {}
