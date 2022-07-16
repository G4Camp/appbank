import 'package:appbank/app.dart';

import 'package:appbank/injection.dart' as get_it;
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  get_it.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlavorConfig(
      name: "PROD",
      variables: {
        "baseUrl": "https://www.prod.com",
        "keycloack": "prod",
      },
    );
    return AppBank.app;
  }
}
