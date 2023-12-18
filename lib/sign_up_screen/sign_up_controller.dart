import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  String _name = '';
  String _email = '';
  String _password = '';

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

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
