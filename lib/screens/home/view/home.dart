import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/home/widgets/home_cards.dart';
import 'package:tokio_marine/screens/home/widgets/home_carousel.dart';
import 'package:tokio_marine/screens/home/widgets/home_drawer.dart';
import 'package:tokio_marine/screens/home/widgets/user_card.dart';
import '../widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: HomeDrawer(size: size, name: 'Guilherme'),
      appBar: HomeAppBar(size: size),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserCard(size: size, name: 'Guilherme'),
            HomeCarousel(size: size),
            HomeCards(size: size),
          ],
        ),
      ),
    );
  }
}
