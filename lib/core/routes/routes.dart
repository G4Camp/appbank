import 'package:appbank/features/auth/presentation/pages/initial_page.dart';
import 'package:appbank/features/auth/presentation/pages/login_cpf_page.dart';
import 'package:appbank/features/auth/presentation/pages/password_page.dart';
import 'package:get/route_manager.dart';

class AppBankRoutes {
  static String initialRoute = '/';
  static String loginCpf = '/login/cpf';
  static String loginPassword = '/login/password';

  static List<GetPage> routes = [
    GetPage(name: initialRoute, page: () => const IntialPage()),
    GetPage(name: loginCpf, page: () => const LoginCpfPage()),
    GetPage(name: loginPassword, page: () => const PasswordPage()),
  ];
}
