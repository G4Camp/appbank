import 'package:appbank/core/constants/keycloack_config.dart';
import 'package:appbank/core/erros/failure.dart';
import 'package:appbank/features/auth/data/datasource/datasource.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class KeycloackDatasource implements AuthDatasource {
  late Dio client;

  KeycloackDatasource() {
    client = Dio();
  }

  @override
  Future<User> login({required String cpf, required String password}) async {
    String keycloack = FlavorConfig.instance.variables["keycloack"];
    Map keycloackJson = (await KeyCloackConfig().config)[keycloack];

    final Map<String, String> headers = {
      'content-type': 'application/x-www-form-urlencoded',
      'cache-control': 'no-cache',
    };
    final Map<String, String> data = {
      'client_id': keycloackJson['client-id'] as String,
      'username': cpf.replaceAll(".", "").replaceAll("-", ""),
      'password': password,
      'grant_type': 'password',
      'client_secret': keycloackJson['client_secret'] as String,
    };

    try {
      final Response response = await client.post(
          "${(keycloackJson['auth-server-url'] as String)}protocol/openid-connect/token",
          data: data,
          options: Options(
            headers: headers,
          ));
      if (response.statusCode == 200) {
        return const User(name: "");
      }
      throw AuthFailure();
    } catch (e) {
      throw AuthFailure();
    }
  }
}
