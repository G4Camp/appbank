import 'package:appbank/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  var auth = AuthBloc();
  getIt.registerSingleton(auth);
}
