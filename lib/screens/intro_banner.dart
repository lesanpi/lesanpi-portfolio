import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lesanpi_portfolio/utils/constants.dart';

class IntroBanner extends StatelessWidget {
  const IntroBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover my portfolio",
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
          ),
          DefaultTextStyle(
            style: Theme.of(context).textTheme.subtitle1!,
            child: Row(
              children: [
                Text("I make "),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText("Mobile Development."),
                    TyperAnimatedText("Web Development."),
                    TyperAnimatedText("Data Scraping."),
                    TyperAnimatedText("Databases."),
                    TyperAnimatedText("Backend Development."),
                    TyperAnimatedText("Frontend Development."),
                    TyperAnimatedText("Dart and Flutter."),
                    TyperAnimatedText("React and React Native."),
                    TyperAnimatedText("Node.js and Express.js"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
