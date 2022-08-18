import 'package:flutter/material.dart';
import '../../../themes/app_text_style.dart';

class HomeCardText extends StatelessWidget {
  final Size size;
  final String text;

  const HomeCardText({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.7,
      child: Text(
        text,
        style: AppTextStyle.appRoboto(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
