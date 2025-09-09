import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.spacing.v24,
          vertical: context.spacing.v40,
        ),
        child: Column(
          spacing: context.spacing.v16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmojiIcon(
              '👀',
              margin: EdgeInsets.only(bottom: context.spacing.v8),
            ),
            Text(context.l10n.homeTitle, style: context.textTheme.displayLarge),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.',
              style: context.textTheme.bodyLarge,
            ),
            Text(
              'Cupping aest hetic chambray',
              style: context.textTheme.titleSmall,
            ),
            Text(
              'Intelligentsia asymmetrical stumptown banh mi, bodega boys ugh pop-up 90\'s cardigan tonx humblebrag DIY. Chicharrones DIY 8-bit gluten-free. Vibecession palo santo pickled fashion axe skateboard hoodie vapor ware vegan lumbersexual. Mumblecore celiac schlitz, DSA chambray hashtag enamel pin et hical before t hey sold out tote bag drinking vinegar hot chicken intelligentsia mukbang gorpcore.',
              style: context.textTheme.bodyLarge,
            ),
            Text(
              'Intelligentsia asymmetrical stumptown',
              style: context.textTheme.titleSmall,
            ),
            Text(
              'Chicharrones DIY 8-bit gluten-free. Vibecession palo santo pickled fashion axe skateboard hoodie vapor ware vegan lumbersexual. Mumblecore celiac schlitz.',
              style: context.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
