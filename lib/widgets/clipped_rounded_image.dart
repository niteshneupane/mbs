import 'package:flutter/material.dart';
import 'package:mbs/config/config.dart';

class ClippedRoundedImage extends StatelessWidget {
  const ClippedRoundedImage({
    super.key,
    this.radius = 52.5,
    this.hasShadow = false,
    this.shadowColor,
    required this.image,
  });

  final String image;
  final double radius;
  final bool hasShadow;
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: hasShadow
          ? BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: shadowColor ?? AppColors.primary,
                  blurRadius: 10.0,
                )
              ],
            )
          : null,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        margin: hasShadow ? const EdgeInsets.all(2) : EdgeInsets.zero,
        width: radius * 2,
        height: radius * 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
