import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/models/user_model.dart';

class Auth with ChangeNotifier {
  final UserModel _model = UserModel(email: '', imageUrl: '', name: '');
  static const key = 'user';

  UserModel? get user => UserModel(
        email: _model.email,
        imageUrl: _model.imageUrl,
        name: _model.name,
      );

  Future<String> login(String email, String password) async {
    try {
      final credentials =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credentials.user == null) {
        return 'No User Found';
      }

      final user = credentials.user!;

      _model.token = await user.getIdToken();
      _model.email = user.email!;
      _model.name = user.displayName!;

      notifyListeners();

      return 'success';
    } on FirebaseAuthException catch (e) {
      return e.code;
    } catch (e) {
      return 'error';
    }
  }

  Future logout() async {
    try {
      _model.email = '';
      _model.imageUrl = '';
      _model.token = '';
    } catch (e) {
      debugPrint(e.toString());
      return;
    }
  }
}
