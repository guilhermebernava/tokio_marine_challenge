import 'package:flutter/material.dart';
import '../../../themes/app_text_style.dart';
import '../../../widgets/text_input.dart';

class FormLogin extends StatelessWidget {
  final Key formKey;
  final TextEditingController cpfController;
  final TextEditingController passwordController;

  const FormLogin({
    Key? key,
    required this.formKey,
    required this.cpfController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              TextInput(
                label: 'CPF',
                controller: cpfController,
                validator: ((value) {
                  return null;
                }),
              ),
              TextInput(
                label: 'Senha',
                controller: passwordController,
                validator: ((value) {
                  return null;
                }),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lembrar a senha',
                style: AppTextStyle.appRoboto(fontSize: 14),
              ),
              Text(
                'Esqueceu a senha?',
                style: AppTextStyle.appRoboto(
                    color: Colors.greenAccent, fontSize: 14),
              ),
            ],
          ),
        )
      ],
    );
  }
}
