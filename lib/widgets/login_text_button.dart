import 'package:flutter/material.dart';
import 'package:tokio_marine/themes/app_colors.dart';
import 'package:tokio_marine/themes/app_text_style.dart';

class LoginTextButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const LoginTextButton({
    Key? key,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 30,
        child: Column(
          children: [
            Text(
              text,
              style: AppTextStyle.appRoboto(
                fontWeight: FontWeight.bold,
              ),
            ),
            isSelected
                ? Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 5,
                    width: 20,
                    color: AppColors.green,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
