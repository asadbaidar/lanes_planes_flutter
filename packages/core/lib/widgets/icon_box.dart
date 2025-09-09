import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  const IconBox(this.icon, {super.key, this.size = 48});

  final Widget icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Center(child: icon),
    );
  }
}
