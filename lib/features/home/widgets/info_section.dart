import 'dart:math' as m;
import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/uil.dart';
import 'package:mbs/features/features.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _mainContent(),
        _contactUs(),
      ],
    );
  }

  Positioned _contactUs() {
    return Positioned(
      right: -40,
      top: -2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 35,
          ),
          Transform.rotate(
            angle: 90 * (m.pi / 180),
            origin: Offset.zero,
            child: FilledButton(
              onPressed: () {},
              child: const Text("Contact Us"),
            ),
          ),
          const SizedBox(
            height: 44,
          ),
          const Iconify(
            Uil.whatsapp_alt,
            size: 40,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _mainContent() {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: InfoModel.demoList.asMap().entries.map(
              (e) {
                bool isOdd = e.key % 2 == 0;
                InfoModel model = e.value;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    textDirection: isOdd ? null : TextDirection.rtl,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: AppColors.primary,
                                  ),
                            ),
                            if (model.description != null)
                              Text(model.description!),
                            if (model.points != null)
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: model.points!.length,
                                primary: false,
                                itemBuilder: (context, itemIndex) {
                                  String pointItem = model.points![itemIndex];
                                  return Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        size: 10,
                                        color: AppColors.fontGray,
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Expanded(
                                        child: Text(
                                          pointItem,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      _buildImageContainer(model.image)
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }

  ClippedRoundedImage _buildImageContainer(String image) {
    return ClippedRoundedImage(
      image: image,
      hasShadow: true,
    );
  }
}
