import 'package:flutter/material.dart';
import 'package:mvvmarchexample/core/services/authentication_serivce.dart';

class LoginViewModel extends ChangeNotifier {
  AuthenticationService authenticationService;
  String value = "";

  bool _busy = false;
  bool get busy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  void onChangeText(String text) {
    value = text;
    notifyListeners();
  }

  LoginViewModel({this.authenticationService});

  Future login(String userId) async {
    setBusy(true);
    var userID = await authenticationService.login(userId);
    setBusy(false);
    return userID;
  }
}
