import 'package:flutter/material.dart';
import 'package:tokio_marine/themes/app_colors.dart';
import '../../../themes/app_text_style.dart';
import '../../../widgets/logo_widget.dart';
import 'bottom_login.dart';

class BackgroundContainer extends StatelessWidget {
  final Size size;
  const BackgroundContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.greenGradient),
      width: size.width,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.1,
              horizontal: size.width * 0.075,
            ),
            child: Column(
              children: [
                const LogoWidget(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width,
                  child: Text(
                    'Bem-vindo!',
                    textAlign: TextAlign.start,
                    style: AppTextStyle.appRoboto(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Aqui você gerência seus seguros e de seus familiares em poucos cliques',
                  style: AppTextStyle.appRoboto(),
                ),
              ],
            ),
          ),
          BottomLogin(
            size: size,
          ),
        ],
      ),
    );
  }
}
