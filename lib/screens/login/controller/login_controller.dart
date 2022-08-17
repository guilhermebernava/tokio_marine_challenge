import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokio_marine/screens/home/view/home.dart';
import '../../../providers/user_provider.dart';

class LoginController {
  final BuildContext context;
  late final UserProvider userProvider;

  LoginController(this.context) {
    userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  final cpfController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() {
    Navigator.of(context).pushReplacementNamed(HomeScreen.route);
  }
}
