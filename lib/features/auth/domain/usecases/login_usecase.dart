import 'package:appbank/core/domain/usecasas/usecase.dart';
import 'package:appbank/core/erros/failure.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:appbank/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase extends UseCase<LoginParam, User> {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  @override
  Future<Either<Failure, User>> call(LoginParam params) {
    return authRepository.login(params);
  }
}

class LoginParam {
  final String cpf;
  final String password;
  const LoginParam({
    required this.cpf,
    required this.password,
  });
}
