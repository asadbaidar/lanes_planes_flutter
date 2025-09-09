import 'package:core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

typedef BlocCallback<T> = void Function(T bloc);

/// A provider that injects a [Bloc] instance from the [GetIt] factory.
class BlocInjection<T extends StateStreamableSource<Object?>>
    extends SingleChildStatelessWidget {
  const BlocInjection({
    super.key,
    super.child,
    this.lazy = true,
    this.onCreate,
  });

  final bool lazy;
  final BlocCallback<T>? onCreate;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return BlocProvider<T>(
      lazy: lazy,
      create: (context) {
        final T bloc = injection();
        onCreate?.call(bloc);
        return bloc;
      },
      child: child,
    );
  }
}
