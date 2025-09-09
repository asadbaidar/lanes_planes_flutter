import 'package:core/core.dart';
import 'package:flutter/material.dart';

class DepartureListTile extends StatelessWidget {
  const DepartureListTile({
    super.key,
    this.header,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  final Widget? header;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: context.spacing.v12,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: context.spacing.v8,
              children: [
                ?header,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: context.spacing.v2,
                  children: [
                    if (title != null)
                      DefaultTextStyle(
                        style: context.textTheme.titleSmall!,
                        maxLines: 2,
                        child: title!,
                      ),
                    if (subtitle != null)
                      DefaultTextStyle(
                        style: context.textTheme.bodyMedium!.secondary(context),
                        maxLines: 2,
                        child: subtitle!,
                      ),
                  ],
                ),
              ],
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}
