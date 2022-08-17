import 'package:flutter/material.dart';
import 'package:tokio_marine/models/user_model.dart';
import 'package:tokio_marine/screens/home/view/home.dart';

class UserProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  void login(BuildContext context) {
    bool isSucess = true;
    if (isSucess) {
      Navigator.of(context).pushReplacementNamed(HomeScreen.route);
    }
  }

  void setUser(UserModel model) {
    _user = model;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
