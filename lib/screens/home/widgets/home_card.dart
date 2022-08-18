import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_style.dart';

class HomeCard extends StatelessWidget {
  final Size size;
  final String text;
  final Widget child;

  const HomeCard({
    Key? key,
    required this.size,
    required this.text,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, top: 20),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: AppTextStyle.appRoboto(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
              width: size.width,
              height: size.height * 0.3,
              decoration: BoxDecoration(
                color: AppColors.lightBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              child: child),
        )
      ],
    );
  }
}
