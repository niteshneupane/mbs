import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbs/features/home/screens/home_page.dart';

import 'config/config.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String routeName = "/splashpage";
  static GoRoute route() {
    return GoRoute(
      path: routeName,
      builder: (_, state) => const SplashPage(),
    );
  }

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  initApp() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.push(HomePage.routeName);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    initApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetPath.logo,
          height: 80,
        ),
      ),
    );
  }
}
