import 'package:flutter/material.dart';
import '../../../themes/app_images.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({Key? key, required Size size})
      : super(
          key: key,
          leading: Builder(builder: (ctx) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(ctx).openDrawer(),
            );
          }),
          title: Image.asset(
            AppImages.logo,
            height: size.height * 0.05,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        );
}
