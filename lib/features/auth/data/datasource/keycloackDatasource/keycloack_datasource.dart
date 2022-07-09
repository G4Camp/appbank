import 'package:appbank/features/auth/data/datasource/datasource.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:dio/dio.dart';

class KeycloackDatasource implements AuthDatasource {
  late Dio client;

  KeycloackDatasource() {
    client = Dio();
  }

  @override
  Future<User> login({required String cpf, required String password}) async {}
}
