import 'package:appbank/features/auth/data/datasource/datasource.dart';
import 'package:appbank/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:appbank/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthDatasource extends Mock implements AuthDatasource {}

void main() {
  test("Shoud call login and return an user", () async {
    //arrage
    const User user = User(name: "TESTE");
    MockAuthDatasource datasource = MockAuthDatasource();
    const LoginParam params = LoginParam(cpf: "", password: "");
    when(
      () => datasource.login(
          cpf: any(named: "cpf"), password: any(named: "password")),
    ).thenAnswer((invocation) async => user);
    final AuthRepositoryImpl repositoryImpl =
        AuthRepositoryImpl(datasource: datasource);
    //act
    final result = await repositoryImpl.login(params);
    //assert
    expect(result, const Right(user));
  });

  test("Should call login and return left", () async {
//arrage
    MockAuthDatasource datasource = MockAuthDatasource();
    const LoginParam params = LoginParam(cpf: "", password: "");
    when(() => datasource.login(
          cpf: any(named: "cpf"),
          password: any(named: "password"),
        )).thenThrow(Object());
    final AuthRepositoryImpl repositoryImpl =
        AuthRepositoryImpl(datasource: datasource);
    //act
    final result = await repositoryImpl.login(params);
    //asssert
    expect(result, isA<Left>());
  });
}
