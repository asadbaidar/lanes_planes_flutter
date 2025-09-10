import 'package:flutter/material.dart';
import 'package:core/theme/app_theme.dart';
import 'package:core/widgets/widgets.dart';

class MessageView extends StatelessWidget {
  const MessageView({
    super.key,
    required this.emojiIcon,
    required this.message,
  });

  const MessageView.error({super.key, required this.message})
    : emojiIcon = '😞';

  const MessageView.empty({super.key, required this.message})
    : emojiIcon = '🤔';

  final String emojiIcon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: context.spacing.v40,
        left: context.spacing.v20,
        right: context.spacing.v20,
        bottom: 120,
      ),
      child: Column(
        children: [
          EmojiIcon(emojiIcon),
          SizedBox(height: context.spacing.v24),
          Text(
            message,
            style: context.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
