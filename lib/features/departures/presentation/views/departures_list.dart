import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanes_planes_flutter/features/departures/domain/domain.dart';
import 'package:lanes_planes_flutter/features/departures/presentation/presentation.dart';
import 'package:localization/localization.dart';

class DeparturesList extends StatelessWidget {
  const DeparturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeparturesBloc, DeparturesState>(
      builder: (context, state) {
        if (state.isFailure) {
          return MessageView.error(message: state.errorMessage(context.l10n));
        } else if (state.hasNoDepartures) {
          return MessageView.empty(message: context.l10n.noDepartures);
        }
        return Stack(
          children: [
            LinearProgress(showProgress: state.isLoading),
            ListView.separated(
              itemCount: state.departures.length,
              itemBuilder: (_, index) {
                return _DepartureListItem(departure: state.departures[index]);
              },
              separatorBuilder: (_, _) => Divider(),
            ),
          ],
        );
      },
    );
  }
}

class _DepartureListItem extends StatelessWidget {
  const _DepartureListItem({required this.departure});

  final Departure departure;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return DepartureListTile(
      header: Row(
        spacing: context.spacing.v2,
        children: [
          ?departure.line.product?.icon,
          BorderedTag(child: Text(departure.line.name)),
        ],
      ),
      title: Text(departure.direction),
      subtitle: Text(departure.from(l10n)),
      trailing: DepartureTrailing(
        title: Text(departure.whenText),
        subtitle: Text(departure.status(l10n)),
        success: departure.isOnTime,
        neutral: departure.isCancelled,
      ),
      onTap: () {},
    );
  }
}

extension on LineProduct {
  Widget get icon => SvgIcon.noTint(SvgIcons.fromName(name), size: 20);
}
