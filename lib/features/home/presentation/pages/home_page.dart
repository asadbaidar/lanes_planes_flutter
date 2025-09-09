import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:lanes_planes_flutter/features/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const path = '/home';
  static String route() => path;

  @override
  Widget build(BuildContext context) {
    return HomePageView();
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        customTitle: HomeSearchBar(verticalSpacing: context.spacing.v24),
      ),
      body: HomeIntro(),
    );
  }
}
