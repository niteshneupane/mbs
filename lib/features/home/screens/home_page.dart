import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbs/features/features.dart';
import 'package:mbs/features/home/widgets/about_us_section.dart';
import 'package:mbs/widgets/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = "/homepage";
  static GoRoute route() {
    return GoRoute(
      path: routeName,
      builder: (_, state) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      childrens: [
        BannerSection(),
        InfoSection(),
        AboutUsSection(),
        SuccessBanner(),
        OurInstructor(),
        Testimonial(),
        OurGallery(),
        ContactForm(),
      ],
    );
  }
}
