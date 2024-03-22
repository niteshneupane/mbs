import 'package:flutter/material.dart';
import 'package:mbs/config/config.dart';

class OurGallery extends StatelessWidget {
  const OurGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
      child: Column(
        children: List.generate(
          5,
          (index) {
            var image = Image.asset(
              AssetPath.gallaryImage(index),
            );
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: image,
              );
            }
            return Row(
              textDirection:
                  index % 2 == 0 ? TextDirection.rtl : TextDirection.ltr,
              children: [
                const Spacer(),
                Flexible(child: image),
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}
