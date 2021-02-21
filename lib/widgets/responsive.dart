import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  Responsive({
    @required this.largeScreen,
    this.mediumScreen,
    this.smallScreen
});

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
