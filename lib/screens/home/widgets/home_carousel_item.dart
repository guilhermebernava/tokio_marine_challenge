import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/themes/app_text_style.dart';
import '../../../themes/app_colors.dart';
import '../../web_view_app.dart';

class HomeCarouselItem extends StatelessWidget {
  final Size size;
  final IconData icon;
  final String text;

  const HomeCarouselItem({
    Key? key,
    required this.size,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          text == 'Auto' ? Navigator.pushNamed(context, WebViewApp.route) : {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.lightBlack,
          borderRadius: BorderRadius.circular(10),
        ),
        width: kIsWeb ? size.width * 0.07 : size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.limeGreen,
              size: kIsWeb ? 20 : 40,
            ),
            SizedBox(
              height: kIsWeb ? size.height * 0.01 : size.height * 0.02,
            ),
            Text(
              text,
              style: AppTextStyle.appRoboto(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
