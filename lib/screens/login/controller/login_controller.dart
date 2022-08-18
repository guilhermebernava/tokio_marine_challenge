import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokio_marine/screens/home/view/home.dart';
import '../../../providers/auth.dart';

class LoginController {
  final BuildContext context;
  late final Auth userProvider;

  LoginController(this.context) {
    userProvider = Provider.of<Auth>(context, listen: false);
  }

  final cpfController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Navigator.of(context).pushReplacementNamed(HomeScreen.route);
  }
}
