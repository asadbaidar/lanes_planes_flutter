import 'package:flutter/material.dart';
import 'package:core/theme/theme.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, this.onTap, required this.child});

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: context.colors.backgroundSecondary,
      focusColor: context.colors.backgroundSecondary,
      highlightColor: context.colors.backgroundTertiary,
      splashColor: context.colors.backgroundTertiary,
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(minHeight: 56),
        padding: EdgeInsets.symmetric(
          vertical: context.spacing.v12,
          horizontal: context.spacing.v16,
        ),
        child: child,
      ),
    );
  }
}
