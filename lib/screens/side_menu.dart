import 'package:flutter/material.dart';
import 'package:lesanpi_portfolio/screens/my_info.dart';
import 'package:lesanpi_portfolio/utils/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(title: "Residence", text: "Venezuela"),
                  AreaInfoText(title: "City", text: "Caracas"),
                  AreaInfoText(title: "Age", text: "23"),
                  Divider(),
                  TextButton(
                    onPressed: () {},
                    child: Row(children: [
                      Text(
                        "Download CV",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                      SizedBox(width: defaultPadding / 2),
                      Icon(Icons.download)
                    ]),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Frontend",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SkillIndicator(
                              porcentage: 0.9,
                              label: "Flutter",
                              color: blue,
                            ),
                          ),
                          SizedBox(width: defaultPadding),
                          Expanded(
                            child: SkillIndicator(
                              porcentage: 0.85,
                              label: "React\nNative",
                              color: lightBlue,
                            ),
                          ),
                          SizedBox(width: defaultPadding),
                          Expanded(
                            child: SkillIndicator(
                              porcentage: 0.8,
                              label: "React",
                              color: Colors.cyan,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      SkillLinearIndicator(
                        porcentage: 0.80,
                        label: "Flutter BLoC / Cubits",
                        color: darkBlue,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.75,
                        label: "Redux",
                        color: lightBlue,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.85,
                        label: "HTML",
                        color: Colors.redAccent,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.85,
                        label: "CSS",
                        color: Colors.tealAccent,
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Backend",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Column(
                    children: [
                      SkillLinearIndicator(
                        porcentage: 0.85,
                        label: "PostgreSQL",
                        color: darkBlue,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.80,
                        label: "Node.js",
                        color: darkGreen,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.75,
                        label: "Express.js",
                        color: darkPurple,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.75,
                        label: "MongoDB",
                        color: green,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.70,
                        label: "Firebase",
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Data",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Column(
                    children: [
                      SkillLinearIndicator(
                        porcentage: 0.90,
                        label: "Python",
                        color: green,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.85,
                        label: "SQL",
                        color: darkBlue,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.85,
                        label: "Selenium",
                        color: Colors.tealAccent,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.85,
                        label: "Web Scraping",
                        color: Colors.blueAccent,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.70,
                        label: "Tableu",
                        color: Colors.redAccent,
                      ),
                      SkillLinearIndicator(
                        porcentage: 0.65,
                        label: "Machine Learning",
                        color: Colors.amber,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SkillIndicator extends StatelessWidget {
  const SkillIndicator(
      {Key? key,
      required this.porcentage,
      required this.label,
      required this.color})
      : super(key: key);
  final double porcentage;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: porcentage),
              duration: defaultDuration,
              builder: (context, value, _) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      color: color,
                      backgroundColor: darkColor,
                    ),
                    Center(
                      child: Text(
                        (value * 100).toInt().toString() + "%",
                      ),
                    )
                  ],
                );
              }),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          label,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

class SkillLinearIndicator extends StatelessWidget {
  const SkillLinearIndicator(
      {Key? key,
      required this.porcentage,
      required this.label,
      required this.color})
      : super(key: key);
  final double porcentage;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: porcentage),
          duration: defaultDuration,
          builder: (context, value, _) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label, style: TextStyle(color: Colors.white)),
                    Text((value * 100).toInt().toString() + "%",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
                SizedBox(height: defaultPadding / 2),
                LinearProgressIndicator(
                  value: value,
                  color: color,
                  backgroundColor: darkColor,
                ),
              ],
            );
          }),
    );
  }
}

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);
  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          text!,
        )
      ],
    );
  }
}
