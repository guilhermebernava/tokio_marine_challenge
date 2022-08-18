import 'package:flutter/material.dart';

import 'home_card_text.dart';

class HomeCardChild extends StatelessWidget {
  final Size size;
  final IconData icon;
  final String text;

  const HomeCardChild({
    Key? key,
    required this.size,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        HomeCardText(
          size: size,
          text: text,
        ),
      ],
    );
  }
}
