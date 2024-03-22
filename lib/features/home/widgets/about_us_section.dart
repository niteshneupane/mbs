import 'package:flutter/material.dart';
import 'package:mbs/features/features.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({super.key});

  @override
  State<AboutUsSection> createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  final List<(String, String)> qAndA = [
    (
      "WHAT IS MINDBLOWING MORNINGS?",
      "We are a wellness program dedicated to helping individuals discover their inner potential and live a healthy lifestyle. Our program is led by a team of knowledgeable and passionate instructors. We aim to provide physical, mental and emotional benefits through daily yoga, meditation and breathing practices."
    ),
    (
      "THE 21/90 RULE",
      "It takes 21 days to build a habit, and it takes 90 days to create a permanent lifestyle change. In 90 days, bloom like a flower, experiencing growth within your family and organisation.\nObserve positive behaviour changes, enhancing overall well-being."
    ),
    (
      "OUR MISSION",
      "In today's fast-paced world, the rat race is not normal. We don't even identify ourselves with the damage we do to ourselves.\nTo address this cause and the importance of waking up early is our major agenda. In a way, it does feel like an accomplishment whenever you're able to get up early. You can get started on what you need to do, and hopefully be done early to enjoy the rest of your day.\nIn that sense, waking up early is not only a win psychologically but also a win physically."
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 26,
      ),
      color: AppColors.primary,
      child: Column(
        children: [
          const ClippedRoundedImage(
            image: AssetPath.meditating,
          ),
          const SizedBox(
            height: 10,
          ),
          ...qAndA.map((e) => _buildQandA(e)),
        ],
      ),
    );
  }

  Widget _buildQandA((String, String) data) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.$1,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                data.$2,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
