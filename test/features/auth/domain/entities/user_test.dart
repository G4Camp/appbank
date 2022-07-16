//arrage
//act
//assert

import 'package:appbank/features/auth/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Teste user", () {
    //arrange
    //act
    const User user = User(name: "Teste", email: "");
    //assert
    expect(user, isA<User>());
  });
}
