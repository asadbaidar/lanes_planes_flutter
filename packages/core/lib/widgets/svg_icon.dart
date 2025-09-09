import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.tinted = true,
  });

  const SvgIcon.noTint(this.icon, {super.key, this.size, this.color})
    : tinted = false;

  final SvgIcons icon;
  final double? size;
  final Color? color;
  final bool tinted;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    return SvgPicture.asset(
      icon(),
      width: size ?? iconTheme.size,
      height: size ?? iconTheme.size,
      colorFilter: tinted
          ? ColorFilter.mode(
              color ??
                  iconTheme.color ??
                  context.colors.interactionSecondaryEnabled,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}
