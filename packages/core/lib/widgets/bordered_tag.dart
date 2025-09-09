import 'package:flutter/material.dart';
import 'package:core/theme/theme.dart';

class BorderedTag extends StatelessWidget {
  const BorderedTag({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: context.colors.borderPrimary),
        borderRadius: BorderRadius.circular(context.radius.small),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.spacing.v8,
          vertical: context.spacing.v2,
        ),
        child: DefaultTextStyle(
          style: context.textTheme.labelMedium!,
          child: child,
        ),
      ),
    );
  }
}
