import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        Placeholder(),
        Placeholder(),
        Placeholder(),
        Text("--"),
      ],
    );
  }
}
