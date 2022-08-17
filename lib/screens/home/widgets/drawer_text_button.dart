import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_style.dart';

class DrawerTextButton extends StatelessWidget {
  final Size size;
  final String text;
  final VoidCallback onTap;
  final bool isLogout;

  const DrawerTextButton({
    Key? key,
    required this.size,
    required this.text,
    required this.onTap,
    this.isLogout = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: size.height * 0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isLogout
                ? Container()
                : const Padding(
                    padding: EdgeInsets.only(left: 20, right: 40),
                    child: Icon(
                      Icons.satellite,
                      color: AppColors.green,
                      size: 30,
                    ),
                  ),
            isLogout
                ? Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      text,
                      style: AppTextStyle.appRoboto(
                        color: AppColors.limeGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                : Text(
                    text,
                    style: AppTextStyle.appRoboto(),
                  ),
          ],
        ),
      ),
    );
  }
}
