import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/core.dart';
import 'package:lanes_planes_flutter/features/departures/departures.dart';
import 'package:lanes_planes_flutter/features/search/search.dart';
import 'package:localization/localization.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.isFailure) {
          return MessageView.error(message: state.errorMessage(context.l10n));
        } else if (state.hasNoResults) {
          return MessageView.empty(message: context.l10n.noResults);
        }
        return Stack(
          children: [
            LinearProgress(showProgress: state.isLoading),
            ListView.separated(
              itemCount: state.results.length,
              itemBuilder: (_, index) {
                return _SearchResultItem(stop: state.results[index]);
              },
              separatorBuilder: (_, _) => Divider(),
            ),
          ],
        );
      },
    );
  }
}

class _SearchResultItem extends StatelessWidget {
  const _SearchResultItem({required this.stop});

  final Stop stop;

  @override
  Widget build(BuildContext context) {
    return SearchResultTile(
      leading: SvgIcon(SvgIcons.explore_nearby),
      trailing: SvgIcon(SvgIcons.chevron_right),
      title: Text(stop.name),
      subtitle: Row(children: stop.products.icons(context)),
      onTap: () => context.goFromCurrent(
        DeparturesPage.route(stopId: stop.id, stopName: stop.name),
      ),
    );
  }
}

extension on Products {
  List<Widget> icons(BuildContext context) {
    return [
          if (suburban == true) SvgIcons.suburban,
          if (subway == true) SvgIcons.subway,
          if (tram == true) SvgIcons.tram,
          if (bus == true) SvgIcons.bus,
          if (ferry == true) SvgIcons.ferry,
          if (express == true) SvgIcons.express,
          if (regional == true) SvgIcons.regional,
        ]
        .expand(
          (e) => [
            SvgIcon.noTint(e, size: 20),
            SizedBox(width: context.spacing.v4),
          ],
        )
        .toList()
      ..removeLast();
  }
}
