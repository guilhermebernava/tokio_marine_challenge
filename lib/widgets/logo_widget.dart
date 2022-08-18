import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/themes/app_images.dart';
import 'package:tokio_marine/themes/app_text_style.dart';

class LogoWidget extends StatelessWidget {
  final bool isAppBar;
  const LogoWidget({Key? key, this.isAppBar = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: kIsWeb
          ? MainAxisAlignment.center
          : isAppBar
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
      children: [
        Image.asset(
          fit: BoxFit.cover,
          AppImages.logo,
          height: 40,
        ),
        Text(
          'TOKIO MARINE \nSEGURADORA',
          textAlign: TextAlign.justify,
          style: AppTextStyle.appRoboto(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
