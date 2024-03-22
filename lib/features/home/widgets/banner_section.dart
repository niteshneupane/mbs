import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbs/config/config.dart';
import 'package:mbs/features/features.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AssetPath.homeBg,
          height: MediaQuery.of(context).size.height * 0.6,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Transform your mind and body with our 21-day wellness program. Join our community and unlock your limitless potential today!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(
                height: 35,
              ),
              FilledButton(
                onPressed: () {
                  context.push(RegisterPage.routeName);
                },
                child: const Text("Register"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
