import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.customTitle,
    this.leading,
    this.bottom,
    this.actions,
    this.toolbarHeight,
    this.bottomHeight,
    this.showLeading = true,
  });

  final String? title;
  final Widget? customTitle;
  final Widget? leading;
  final Widget? bottom;
  final List<Widget>? actions;
  final double? toolbarHeight;
  final double? bottomHeight;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    final leading = implyLeading(context)
        ? this.leading ?? const CustomBackButton()
        : null;
    return AppBar(
      title: customTitle ?? (title != null ? Text(title!) : null),
      leading: leading,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(_bottomHeight + 1),
        child: Column(
          children: [
            if (bottom != null) bottom!,
            Hero(
              tag: 'app_bar_divider',
              child: Divider(height: 1, color: context.colors.borderPrimary),
            ),
          ],
        ),
      ),
      actions: actions,
      leadingWidth: kDefaultElementSize + context.spacing.v4.twice,
      titleSpacing: 0,
      toolbarHeight: _toolbarHeight,
      automaticallyImplyLeading: showLeading,
    );
  }

  double? get _titleHeight =>
      $cast<PreferredSizeWidget>(customTitle)?.preferredSize.height;

  double get _bottomHeight =>
      bottomHeight ??
      $cast<PreferredSizeWidget>(bottom)?.preferredSize.height ??
      0;

  double get _toolbarHeight =>
      toolbarHeight ?? _titleHeight ?? kDefaultToolbarHeight;

  @override
  Size get preferredSize => Size.fromHeight(_toolbarHeight + _bottomHeight);

  ModalRoute<dynamic>? route(BuildContext context) => ModalRoute.of(context);

  bool implyLeading(BuildContext context) =>
      showLeading && (route(context)?.impliesAppBarDismissal == true);
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: SvgIcon(SvgIcons.arrow_left_alt),
        onPressed: () {
          Navigator.maybePop(context);
        },
      ),
    );
  }
}
