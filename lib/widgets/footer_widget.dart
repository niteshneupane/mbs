import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/cib.dart';
import 'package:iconify_flutter_plus/icons/mdi.dart';
import 'package:mbs/features/features.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgGray,
      padding: const EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 35,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Need Help?",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 35,
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      hintText: "Your email address",
                    ),
                  ),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    shape: const LinearBorder(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Row(
            children: [
              Iconify(
                Mdi.instagram,
                color: AppColors.primary,
                size: 24,
              ),
              SizedBox(width: 24),
              Iconify(
                Cib.facebook_f,
                color: AppColors.primary,
                size: 18,
              ),
              SizedBox(width: 24),
              Iconify(
                Mdi.twitter,
                color: AppColors.primary,
                size: 24,
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _footerLinks(
                title: "Quick Links",
                links: [
                  ("Home", HomePage.routeName),
                  ("Community", null),
                  ("Courses", null),
                ],
              ),
              _footerLinks(
                title: "Company",
                links: [
                  ("About Us", null),
                  ("Contact Us", null),
                ],
              ),
              _footerLinks(
                title: "Further information",
                links: [
                  ("Terms & Conditions", null),
                  ("Privacy policy", null),
                  ("Cookies policy", null),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _footerLinks({
    required String title,
    required List<(String, String?)> links,
  }) {
    return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 7,
            ),
            ...links.map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: InkWell(
                  onTap: e.$2 != null
                      ? () {
                          context.push(e.$2!);
                        }
                      : null,
                  child: Text(
                    e.$1,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
