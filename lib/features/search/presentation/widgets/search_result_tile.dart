import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SearchResultTile extends StatelessWidget {
  const SearchResultTile({
    super.key,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.onTap,
  });

  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final Widget? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (leading != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.spacing.v2),
              child: leading,
            ),
          SizedBox(width: context.spacing.v12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null)
                        DefaultTextStyle(
                          style: context.textTheme.titleSmall!,
                          maxLines: 2,
                          child: title!,
                        ),
                      SizedBox(height: context.spacing.v4),
                      ?subtitle,
                    ],
                  ),
                ),
                SizedBox(width: context.spacing.v12),
                ?trailing,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
