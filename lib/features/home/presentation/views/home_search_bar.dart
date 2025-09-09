import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:lanes_planes_flutter/features/home/home.dart';
import 'package:lanes_planes_flutter/features/search/search.dart';
import 'package:localization/localization.dart';

class HomeSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeSearchBar({super.key, required this.verticalSpacing});

  final double verticalSpacing;

  @override
  Size get preferredSize => Size.fromHeight(verticalSpacing.twice + height);

  double get height => kDefaultElementSize;

  @override
  Widget build(BuildContext context) {
    return SearchBarButton(
      onPressed: () => context.goFromCurrent(SearchPage.route()),
      hint: context.l10n.searchForStation,
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: context.spacing.v20,
        vertical: verticalSpacing,
      ),
    );
  }
}
