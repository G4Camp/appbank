abstract class Failure {}

class AuthFailure extends Failure {
  final String msg;

  AuthFailure({this.msg = "Falha no login"});
}
