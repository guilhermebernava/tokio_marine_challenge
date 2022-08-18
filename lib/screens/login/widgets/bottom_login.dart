import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_style.dart';

class BottomLogin extends StatelessWidget {
  final Size size;
  const BottomLogin({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      height: size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.03),
            child: Text(
              'Acesse atráves das redes sociais',
              style: AppTextStyle.appRoboto(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: size.height * 0.07,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.facebookF, color: Colors.white, size: 30),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Icon(FontAwesomeIcons.google,
                      color: Colors.white, size: 30),
                ),
                Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
