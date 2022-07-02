import 'package:appbank/core/routes/routes.dart';
import 'package:appbank/core/themes/app_bank_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "App Bank",
      initialRoute: "/",
      getPages: AppBankRoutes.routes,
      theme: AppBAnkTheme.theme,
    );
  }
}
