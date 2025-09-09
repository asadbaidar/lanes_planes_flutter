import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:lanes_planes_flutter/features/search/presentation/presentation.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const path = 'search';
  static String route() => path;

  @override
  Widget build(BuildContext context) {
    return BlocInjection<SearchBloc>(child: SearchPageView());
  }
}

class SearchPageView extends StatelessWidget {
  const SearchPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: SearchField()),
      body: SearchResults(),
    );
  }
}
