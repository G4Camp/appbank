import 'package:appbank/features/auth/domain/entities/user.dart';

abstract class AuthDatasource {
  Future<User> login({String cpf, String password});
}
