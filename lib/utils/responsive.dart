import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
