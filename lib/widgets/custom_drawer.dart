import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ic.dart';
import 'package:iconify_flutter_plus/icons/ion.dart';
import 'package:iconify_flutter_plus/icons/material_symbols.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:mbs/config/app_colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<(String, String, String?)> datas = [
    (
      MaterialSymbols.home_outline_sharp,
      "Home",
      null,
    ),
    (Mdi.smart_card_outline, "About us", null),
    (Mdi.view_grid_outline, "Courses", null),
    (Ic.sharp_person_outline, "Community", null),
    (Ic.outline_local_phone, "Contact us", null),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 30,
        ),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Iconify(
              Ion.person_circle_sharp,
              size: 46,
              color: AppColors.primary,
            ),
            title: const Text(
              "Register/Login",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            color: AppColors.bgGray,
          ),
          ...datas.map(
            (e) => ListTile(
              onTap: () {
                if (e.$3 != null) {
                } else {
                  context.pop();
                }
              },
              leading: Iconify(e.$1),
              title: Text(e.$2),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
