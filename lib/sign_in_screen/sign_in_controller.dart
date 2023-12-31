import 'package:flutter/material.dart';

class SignInController extends ChangeNotifier {
  String _email = '';
  String _password = '';

  String get email => _email;
  set email(String value) {
    _email = value;
    notifyListeners();
  }

  String get password => _password;
  set password(String value) {
    _password = value;
    notifyListeners();
  }
}
