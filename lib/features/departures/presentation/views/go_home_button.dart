import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:go_router/go_router.dart';
import 'package:lanes_planes_flutter/features/home/home.dart';

class GoHomeButton extends StatelessWidget {
  const GoHomeButton({super.key, this.icon = const SvgIcon(SvgIcons.close)});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.spacing.v4),
      child: IconButton(
        icon: icon,
        onPressed: () => context.go(HomePage.route()),
      ),
    );
  }
}
