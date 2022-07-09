import 'package:appbank/core/routes/routes.dart';
import 'package:appbank/core/themes/app_bank_theme.dart';
import 'package:get/route_manager.dart';

class AppBank {
  static GetMaterialApp app = GetMaterialApp(
    title: "App Bank",
    initialRoute: "/",
    getPages: AppBankRoutes.routes,
    theme: AppBAnkTheme.theme,
  );
}
