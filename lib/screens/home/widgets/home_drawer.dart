import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_style.dart';
import '../../login/view/login.dart';
import 'drawer_text_button.dart';

class HomeDrawer extends StatelessWidget {
  final Size size;
  final String name;

  const HomeDrawer({
    Key? key,
    required this.size,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Olá!',
                      style: AppTextStyle.appRoboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Text(
                          'GB',
                          style: AppTextStyle.appRoboto(),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name.toUpperCase(),
                              textAlign: TextAlign.start,
                              style: AppTextStyle.appRoboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                'Minha Conta',
                                textAlign: TextAlign.start,
                                style: AppTextStyle.appRoboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: size.height * 0.47,
                width: size.width,
                child: Column(
                  children: [
                    DrawerTextButton(
                      size: size,
                      text: 'Home',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      text: 'Seguros',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      text: 'Familia',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      text: 'Ajustes',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      text: 'Sobre',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      text: 'Redes Sociais',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      text: 'Contratos',
                      onTap: () {},
                    ),
                    DrawerTextButton(
                      size: size,
                      isLogout: true,
                      text: 'Sair',
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.route);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.26,
              width: size.width,
              decoration: const BoxDecoration(
                gradient: AppColors.greenGradient,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Duvidas ?',
                      style: AppTextStyle.appRoboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Entre em contato conosco por meio das redes sociais',
                      style: AppTextStyle.appRoboto(fontSize: 14),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
