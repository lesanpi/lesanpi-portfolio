import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lesanpi_portfolio/screens/intro_banner.dart';
import 'package:lesanpi_portfolio/screens/projects_presentation.dart';
import 'package:lesanpi_portfolio/screens/side_menu.dart';
import 'package:lesanpi_portfolio/utils/constants.dart';
import 'package:lesanpi_portfolio/utils/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Responsive.isDesktop(context) ? null : SideMenu(),
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                );
              }),
            ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !Responsive.isDesktop(context)
                  ? SizedBox.shrink()
                  : Expanded(
                      flex: 2,
                      child: SideMenu(),
                    ),
              Expanded(
                flex: 7,
                child: ProjectsPresentation(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
