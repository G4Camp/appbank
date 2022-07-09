import 'package:appbank/core/erros/failure.dart';
import 'package:appbank/features/auth/data/datasource/datasource.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:appbank/features/auth/domain/repositories/auth_repository.dart';
import 'package:appbank/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthDatasource datasource;

  AuthRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, User>> login(LoginParam params) async {
    try {
      final User user =
          await datasource.login(cpf: params.cpf, password: params.password);
      return Right(user);
    } catch (e) {
      return Left(AuthFailure());
    }
  }
}
