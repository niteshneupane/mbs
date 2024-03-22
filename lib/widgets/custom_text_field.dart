import 'package:flutter/material.dart';
import 'package:mbs/features/features.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.textEditingController,
    this.maxLines = 1,
  });

  final String hintText;
  final TextEditingController? textEditingController;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.lightGray,
        hintText: hintText,
      ),
    );
  }
}
