import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mbs/features/features.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static const String routeName = "/registerpage";
  static GoRoute route() {
    return GoRoute(
      path: routeName,
      builder: (_, state) => const RegisterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Registration Form",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            hintText: "Name",
            hasBorder: true,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            hintText: "Email address",
            hasBorder: true,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            hintText: "Mobile number",
            hasBorder: true,
          ),
          const SizedBox(
            height: 30,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: const Text("REGISTER"),
          ),
        ],
      ),
    );
  }
}
