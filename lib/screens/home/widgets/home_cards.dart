import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/home/widgets/home_card.dart';
import 'package:tokio_marine/screens/home/widgets/home_card_child.dart';
import '../../../data/data.dart';

class HomeCards extends StatelessWidget {
  final Size size;
  const HomeCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cards = Data().homeCards;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: kIsWeb ? size.height * 0.625 : size.height * 0.5,
        width: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: size.height * 0.1),
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          controller: ScrollController(),
          itemBuilder: (context, index) => HomeCard(
            size: size,
            text: cards[index].title,
            child: HomeCardChild(
                size: size, icon: cards[index].icon, text: cards[index].text),
          ),
          itemCount: cards.length,
        ),
      ),
    );
  }
}
