import 'package:flutter/material.dart';

class EmojiIcon extends StatelessWidget {
  const EmojiIcon(
    this.emoji, {
    super.key,
    this.size = 48,
    this.margin = EdgeInsets.zero,
  });

  final String emoji;
  final double size;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox.square(
        dimension: size,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            emoji,
            style: TextStyle(fontSize: size),
            strutStyle: StrutStyle(
              fontSize: size,
              forceStrutHeight: true,
              height: 1.1,
            ),
          ),
        ),
      ),
    );
  }
}
