import 'package:appbank/core/erros/failure.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:appbank/features/auth/domain/repositories/auth_repository.dart';
import 'package:appbank/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  group("Sucess login group", () {
    test("Should return sucess with mock password", () async {
      //arrange
      MockAuthRepository repository = MockAuthRepository();
      LoginParam params = const LoginParam(cpf: "", password: "");
      when(() => repository.login(params)).thenAnswer((invocation) async =>
          const Right(User(name: "teste", email: "email")));
      //act
      final result = await LoginUseCase(repository).call(params);
      //assert
      expect(result, const Right(User(name: "teste", email: "email")));
      verify(
        () => repository.login(params),
      );
    });
  });
  group("Failed login group", () {
    test("Should return failed with mock password", () async {
      //arrange
      MockAuthRepository repository = MockAuthRepository();
      LoginParam params = const LoginParam(cpf: "", password: "");
      when(() => repository.login(params)).thenAnswer(
          (invocation) async => Left(AuthFailure(msg: "CPF inválido")));
      //act
      final Either<Failure, User> result =
          await LoginUseCase(repository).call(params);
      //assert
      expect(result, isA<Left>());
      verify(
        () => repository.login(params),
      );
    });
  });
}
