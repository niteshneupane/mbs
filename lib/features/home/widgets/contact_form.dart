import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mbs/features/features.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const Text(
            "We're here for you!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.primary,
            ),
          ),
          Stack(
            children: [
              const Positioned(
                left: 4,
                bottom: 65,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.primary,
                ),
              ),
              Positioned(
                right: 4,
                bottom: 65,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.primary.withOpacity(0.4),
                ),
              ),
              const Positioned(
                right: 4,
                top: 165,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.primary,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: 240,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.primary.withOpacity(0.4),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 28,
                    ),
                    const CustomTextField(
                      hintText: "Name",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      hintText: "Location",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      hintText: "Email",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      hintText: "Phone",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      hintText: "Questions/Comments",
                      maxLines: 4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text("Submit"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Center(
                child: Image.asset(
                  AssetPath.homeContact,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
