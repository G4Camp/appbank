import 'package:appbank/features/auth/presentation/pages/initial_page.dart';
import 'package:get/route_manager.dart';

class AppBankRoutes {
  static String initialRoute = '/';

  static List<GetPage> routes = [
    GetPage(name: initialRoute, page: () => const IntialPage()),
  ];
}
