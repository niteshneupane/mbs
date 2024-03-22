import 'package:flutter/material.dart';
import 'package:mbs/features/features.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.textEditingController,
    this.maxLines = 1,
    this.hasBorder = false,
  });

  final String hintText;
  final TextEditingController? textEditingController;
  final int maxLines;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.bgGray),
    );
    return TextFormField(
      controller: textEditingController,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: hasBorder ? border : InputBorder.none,
        focusedBorder: hasBorder ? border : InputBorder.none,
        enabledBorder: hasBorder ? border : InputBorder.none,
        filled: true,
        fillColor: AppColors.lightGray,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(12),
      ),
    );
  }
}
