import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mbs/features/features.dart';

class SuccessBanner extends StatelessWidget {
  const SuccessBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 4,
      ),
      child: Row(
        children: SuccessModel.demo.map((e) {
          if (e != null) {
            return _buildItems(e);
          }
          return Container(
            color: AppColors.primary,
            width: 2,
            height: 80,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildItems(SuccessModel model) {
    return Expanded(
      child: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(model.iconPath),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  model.label,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${model.value}+",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
