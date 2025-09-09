import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanes_planes_flutter/features/search/presentation/presentation.dart';
import 'package:localization/localization.dart';

class SearchField extends StatefulWidget implements PreferredSizeWidget {
  const SearchField({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: CustomTextField(
        controller: controller,
        autoFocus: true,
        hintText: context.l10n.searchForStation,
        trailing: _ClearTextButton(
          onPressed: () {
            controller.clear();
            context.read<SearchBloc>().add(const SearchStops(''));
          },
        ),
        onChanged: (query) {
          context.read<SearchBloc>().add(SearchStops(query));
        },
      ),
    );
  }
}

class _ClearTextButton extends StatelessWidget {
  const _ClearTextButton({this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.spacing.v4),
      child: IconButton(
        style: context.theme.iconButtonTheme.style,
        onPressed: onPressed,
        icon: const SvgIcon(SvgIcons.cancel),
      ),
    );
  }
}
