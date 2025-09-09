import 'package:flutter/material.dart';
import 'package:core/theme/theme.dart';
import 'package:core/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.autoFocus = false,
    this.hintText,
    this.trailing,
    this.onChanged,
  });

  final TextEditingController? controller;
  final bool autoFocus;
  final String? hintText;
  final Widget? trailing;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofocus: autoFocus,
      style: context.textTheme.bodyLarge,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        border: InputBorder.none,
        suffixIcon: trailing,
        suffixIconConstraints: BoxConstraints(
          minWidth: kDefaultElementSize + context.spacing.v4.twice,
          minHeight: kDefaultElementSize,
        ),
      ),
      cursorHeight: 16,
      cursorWidth: 1,
      cursorColor: context.colors.foregroundPrimary,
      onChanged: onChanged,
    );
  }
}
