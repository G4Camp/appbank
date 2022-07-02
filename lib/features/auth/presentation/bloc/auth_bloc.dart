import 'package:appbank/core/routes/routes.dart';
import 'package:bloc/bloc.dart';
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
    on<LoginEvent>(((event, emit) {
      if (state is ValidatedCpf) {
        emit(SendingLogin(
            cpf: (state as ValidatedCpf).cpf, password: event.password));
      }
    }));
    on<PopEvent>((event, emit) {
      Get.back();
    });
  }
}
