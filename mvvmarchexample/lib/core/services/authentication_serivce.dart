import 'package:mvvmarchexample/core/services/api.dart';

class AuthenticationService {
  final Api api;

  AuthenticationService(this.api);

  Future login(String id) async {
    await Future.delayed(Duration(milliseconds: 200));
    return Future.value("ok");
  }
}
