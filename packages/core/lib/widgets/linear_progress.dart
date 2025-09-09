import 'package:flutter/material.dart';
import 'package:core/theme/theme.dart';

class LinearProgress extends StatelessWidget {
  const LinearProgress({super.key, this.height = 2, this.showProgress = true});

  final double height;
  final bool showProgress;

  @override
  Widget build(BuildContext context) {
    return showProgress
        ? LinearProgressIndicator(
            minHeight: height,
            color: context.colors.foregroundPrimary,
            backgroundColor: context.colors.backgroundTertiary,
          )
        : SizedBox(height: height);
  }
}
