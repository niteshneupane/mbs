import 'package:flutter/material.dart';
import 'package:mbs/features/features.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key, required this.childrens});
  final List<Widget> childrens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...childrens,
          const FooterWidget(),
        ],
      ),
    );
  }
}
