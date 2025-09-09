import 'package:core/core.dart';
import 'package:flutter/material.dart';

class DepartureTrailing extends StatelessWidget {
  const DepartureTrailing({
    super.key,
    this.title,
    this.subtitle,
    this.success = false,
    this.neutral = false,
  });

  final Widget? title;
  final Widget? subtitle;
  final bool success;
  final bool neutral;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = neutral
        ? context.colors.backgroundSystemNeutral
        : success
        ? context.colors.backgroundSystemSuccess
        : context.colors.backgroundSystemError;
    final foregroundColor = neutral
        ? context.colors.foregroundSystemNeutral
        : success
        ? context.colors.foregroundSystemSuccess
        : context.colors.foregroundSystemError;
    return SizedBox.square(
      dimension: 64,
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(context.radius.small),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (title != null)
              Flexible(
                child: DefaultTextStyle(
                  style: context.textTheme.titleSmall!.withColor(
                    foregroundColor,
                  ),
                  child: title!,
                ),
              ),
            if (subtitle != null)
              Flexible(
                child: DefaultTextStyle(
                  style: context.textTheme.labelMedium!.withColor(
                    foregroundColor,
                  ),
                  child: subtitle!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
