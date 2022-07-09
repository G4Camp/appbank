import 'package:appbank/core/erros/failure.dart';
import 'package:appbank/core/routes/routes.dart';
import 'package:appbank/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:appbank/features/auth/domain/usecases/login_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:get/route_manager.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<InitLogin>((event, emit) {
      Get.toNamed(AppBankRoutes.loginCpf);
    });
    on<SetPassword>((event, emit) {
      emit(ValidatedCpf(cpf: event.cpf));
      Get.toNamed(AppBankRoutes.loginPassword);
    });
    on<LoginEvent>(((event, emit) async {
      if (state is ValidatedCpf) {
        emit(SendingLogin(
            cpf: (state as ValidatedCpf).cpf, password: event.password));

        Either<Failure, User> either =
            await LoginUseCase((AuthRepositoryImpl(datasource: datasource)))
                .call(LoginParam(
                    cpf: (state as ValidatedCpf).cpf,
                    password: event.password));

        either.fold(
          (l) => add(
            ErrorLoginEvent(),
          ),
          (r) => add(
            SucessLoginEvent(user: r),
          ),
        );
      }
    }));
    on<PopEvent>((event, emit) {
      Get.back();
    });
  }
}
