import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lesanpi_portfolio/utils/constants.dart';

class IntroBanner extends StatelessWidget {
  const IntroBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Container(color: Colors.white10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my portfolio",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
          )
        ],
      ),
    );
  }
}
