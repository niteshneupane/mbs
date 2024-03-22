import 'package:flutter/material.dart';
import 'package:mbs/features/features.dart';

class OurInstructor extends StatelessWidget {
  const OurInstructor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 20),
      child: Column(
        children: [
          Text(
            "Our Instructors",
            style: TextStyle(
              fontSize: 18,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 13,
          ),
          ClippedRoundedImage(
            image: AssetPath.manandher,
            radius: 148 / 2,
            hasShadow: true,
          ),
          SizedBox(
            height: 13,
          ),
          Text(
              "Mandar\nMandar is a highly knowledgeable and certified Yoga Instructor, deeply devoted to yoga and the art of teaching. His expertise extends beyond yoga itself, encompassing various habits that contribute to creating an optimal morning routine. Mandar takes immense pleasure in instilling positivity and enriching the lives of others through his teachings.")
        ],
      ),
    );
  }
}
