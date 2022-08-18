import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/login/widgets/login_form.dart';
import 'package:tokio_marine/themes/app_colors.dart';
import 'package:tokio_marine/widgets/login_text_button.dart';
import '../../../providers/auth.dart';
import '../../../widgets/circle_button.dart';

class LoginContainer extends StatefulWidget {
  final VoidCallback onTap;
  final Size size;
  final Auth userProvider;
  final TextEditingController cpfController;
  final TextEditingController passwordController;
  final Key formKey;

  const LoginContainer({
    Key? key,
    required this.size,
    required this.cpfController,
    required this.passwordController,
    required this.userProvider,
    required this.formKey,
    required this.onTap,
  }) : super(key: key);

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  int _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 1.35),
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: AppColors.lightBlack,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadow,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 15),
              )
            ],
          ),
          width: kIsWeb ? widget.size.width * 0.2 : widget.size.width * 0.9,
          height: kIsWeb ? widget.size.height * 0.33 : widget.size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 50,
                      ),
                      child: LoginTextButton(
                        isSelected: _isSelected == 0,
                        onTap: () {
                          setState(() {
                            _isSelected = 0;
                          });
                        },
                        text: 'Entrar',
                      ),
                    ),
                    LoginTextButton(
                      isSelected: _isSelected == 1,
                      onTap: () {
                        setState(() {
                          _isSelected = 1;
                        });
                      },
                      text: 'Cadastrar',
                    ),
                  ],
                ),
              ),
              _isSelected == 0
                  ? FormLogin(
                      formKey: widget.formKey,
                      cpfController: widget.cpfController,
                      passwordController: widget.passwordController,
                    )
                  : Container()
            ],
          ),
        ),
        CircleButton(
          onTap: widget.onTap,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppColors.greenGradient,
            ),
            child: const Icon(
              Icons.chevron_right_sharp,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}
