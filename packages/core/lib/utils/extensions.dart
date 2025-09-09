import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

/// Returns [T] if instance of [T], otherwise null
T? $cast<T>(dynamic value) => value == null
    ? null
    : value is T
        ? value
        : null;

extension NumberX on num {
  double get twice => this * 2;
  double get half => this / 2;
}

extension QueryX on String {
  /// Add query parameters to a path string
  String withQuery(Map<String, dynamic> query) {
    if (query.isEmpty) return this;
    final queryString = query.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value.toString())}',
        )
        .join('&');
    return '$this?$queryString';
  }
}

extension DateFormatX on DateTime {
  String get formatHm => DateFormat.Hm().format(this);

  String get formatSeconds => DateFormat('ss.SSS').format(this);
}

extension CurrentRouteX on BuildContext {
  String get currentRoute => GoRouterState.of(this).uri.pathSegments.join('/');

  void goFromCurrent(String location, {Object? extra}) {
    go('/$currentRoute/$location', extra: extra);
  }
}
