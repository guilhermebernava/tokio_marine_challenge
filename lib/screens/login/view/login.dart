import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/login/controller/login_controller.dart';
import 'package:tokio_marine/screens/login/widgets/background_container.dart';
import '../widgets/login_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = LoginController(context);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  BackgroundContainer(size: size),
                  LoginContainer(
                    size: size,
                    cpfController: controller.cpfController,
                    passwordController: controller.passwordController,
                    userProvider: controller.userProvider,
                    formKey: controller.formKey,
                    onTap: () => controller.login(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
