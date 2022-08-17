import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_text_style.dart';

class HomeCarousel extends StatelessWidget {
  final Size size;
  const HomeCarousel({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, top: 20),
          child: Text(
            'Cotar e Contratar',
            style: AppTextStyle.appRoboto(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.lightBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              width: size.width * 0.4,
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
