import 'package:appbank/core/erros/failure.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:appbank/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(LoginParam params);
}
