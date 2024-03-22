import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/cil.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:mbs/config/config.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetPath.logo),
          Builder(builder: (ctx) {
            return InkWell(
              onTap: () {
                Scaffold.of(ctx).openEndDrawer();
              },
              child: const Iconify(
                Cil.hamburger_menu,
                color: AppColors.primary,
                size: 32,
              ),
            );
          }),
        ],
      ),
    );
  }
}
