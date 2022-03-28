import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lesanpi_portfolio/screens/main_screen.dart';
import 'package:lesanpi_portfolio/utils/app_scroll_behavior.dart';
import 'package:lesanpi_portfolio/utils/constants.dart';
import 'package:lesanpi_portfolio/widgets/project_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio lesanpi',
      scrollBehavior: AppScrollBehavior(),
      theme: ThemeData.dark().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                  bodyText1: TextStyle(color: bodyTextColor),
                  bodyText2: TextStyle(color: bodyTextColor))),
      home: const MainScreen(),
    );
  }
}
