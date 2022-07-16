import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class KeyCloackConfig {
  Future<Map> get config async => json.decode(await getJson());

  Future<String> getJson() async {
    return rootBundle.loadString('assets/json/keyclock.json');
  }
}
