import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_text_style.dart';

class UserCard extends StatelessWidget {
  final Size size;
  final String name;
  final String? imageUrl;

  const UserCard({
    Key? key,
    required this.size,
    required this.name,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.1,
      decoration: const BoxDecoration(
        gradient: AppColors.greenGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.purple,
              child: Text(
                'GB',
                style: AppTextStyle.appRoboto(),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bem-vindo (a),',
                    textAlign: TextAlign.start,
                    style: AppTextStyle.appRoboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.start,
                    style: AppTextStyle.appRoboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
