import 'package:appbank/core/erros/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Param, Type> {
  Future<Either<Failure, Type>> call(Param params);
}
