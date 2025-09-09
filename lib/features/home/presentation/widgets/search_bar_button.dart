import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SearchBarButton extends StatelessWidget {
  const SearchBarButton({
    super.key,
    this.leading = const SvgIcon(SvgIcons.search),
    this.hint,
    this.height = kDefaultElementSize,
    this.padding,
    required this.onPressed,
  });

  final Widget leading;
  final String? hint;
  final double height;
  final EdgeInsetsGeometry? padding;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => states.isPressed
                ? context.colors.backgroundSecondary
                : context.colors.backgroundPrimary,
          ),
          side: WidgetStateProperty.resolveWith(
            (states) => BorderSide(
              color: states.isPressed
                  ? context.colors.interactionSecondaryPressed
                  : context.colors.borderPrimary,
            ),
          ),
          minimumSize: WidgetStateProperty.all(Size.fromHeight(height)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.radius.rounded),
            ),
          ),
          padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(horizontal: context.spacing.v4),
          ),
          elevation: WidgetStateProperty.all(0),
          splashFactory: NoSplash.splashFactory,
        ),
        child: Row(
          children: [
            IconBox(leading),
            SizedBox(width: context.spacing.v4),
            if (hint != null)
              Expanded(
                child: Text(
                  hint!,
                  style: context.textTheme.bodyLarge?.tertiary(context),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
