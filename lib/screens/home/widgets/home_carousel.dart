import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/data/data.dart';
import 'package:tokio_marine/screens/home/widgets/home_carousel_item.dart';
import '../../../themes/app_text_style.dart';

class HomeCarousel extends StatelessWidget {
  final Size size;
  const HomeCarousel({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = Data().carouselItens;

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
          height: kIsWeb ? size.height * 0.1 : size.height * 0.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemBuilder: (context, index) => HomeCarouselItem(
              size: size,
              icon: list[index].icon,
              text: list[index].text,
            ),
            itemCount: list.length,
          ),
        )
      ],
    );
  }
}
