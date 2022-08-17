import 'package:flutter/material.dart';
import 'package:tokio_marine/themes/app_colors.dart';

class CircleButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final bool border;

  const CircleButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.border = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.green,
          border: border
              ? Border.all(
                  color: AppColors.lightBlack,
                  width: 10,
                )
              : null,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
