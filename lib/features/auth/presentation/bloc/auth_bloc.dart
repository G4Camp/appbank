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
    on<PopEvent>((event, emit) {
      Get.back();
    });
    on<SetPassword>((event, emit) {
      Get.toNamed(AppBankRoutes.loginPassword);
    });
  }
}
