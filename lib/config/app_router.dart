import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbs/features/features.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: SplashPage.routeName,
    routes: [
      SplashPage.route(),
    ],
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Look who is here,"),
              Text("A HACKER,"),
            ],
          ),
        ),
      );
    },
  );
}
