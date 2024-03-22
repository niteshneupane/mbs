import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mbs/features/features.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          const Text(
            "Our happy clients\n say about us",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          const Text(
            "2,157 people have said how good Mind blowing mornings",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 44,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 236,
              viewportFraction: 0.9,
              disableCenter: true,
              // enableInfiniteScroll: false,
            ),
            items: [_buildTestimonialCard()],
          ),
        ],
      ),
    );
  }

  Stack _buildTestimonialCard() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 246,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x5544D8FF),
                Color(0x55084FFF),
                Color(0x55084FFF),
                Color(0x55FFCE00),
                Color(0x55F47D31),
              ],
            ),
          ),
        ),
        Positioned(
          left: -30,
          top: 20,
          bottom: 20,
          child: Container(
            width: 290,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.bgGray,
                  offset: Offset(4, 4),
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orange,
                    ),
                  ).toList(),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  "The instructors are amazing, and the community support is invaluable. Highly recommend!,",
                ),
                const Spacer(),
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: ClippedRoundedImage(
                    image: AssetPath.boy,
                    radius: 16,
                  ),
                  title: Text("John Doe"),
                  subtitle: Text("Digital Marketer"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
