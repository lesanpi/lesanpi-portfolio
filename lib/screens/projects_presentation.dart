import 'package:flutter/material.dart';
import 'package:lesanpi_portfolio/models/Project.dart';
import 'package:lesanpi_portfolio/screens/intro_banner.dart';
import 'package:lesanpi_portfolio/utils/constants.dart';

class ProjectsPresentation extends StatefulWidget {
  const ProjectsPresentation({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectsPresentation> createState() => _ProjectsPresentationState();
}

class _ProjectsPresentationState extends State<ProjectsPresentation> {
  final _index = ValueNotifier<int>(0);

  @override
  void initState() {
    _index.value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntroBanner(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: ValueListenableBuilder<int>(
                        valueListenable: _index,
                        builder: (context, index, _) {
                          return AnimatedSwitcher(
                            duration: defaultDuration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              key: Key("${_index.value}"),
                              children: [
                                Spacer(),
                                Text(
                                  projects[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: titleColor,
                                      ),
                                  key: ValueKey("${_index.value}-title"),
                                ),
                                const SizedBox(
                                  height: defaultPadding / 2,
                                ),
                                Expanded(
                                  flex: 7,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      projects[index].description,
                                      textAlign: TextAlign.justify,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 2),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Center(
                        child: ValueListenableBuilder<int>(
                            valueListenable: _index,
                            builder: (context, index, _) {
                              return AnimatedSwitcher(
                                duration: defaultDuration,
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  final offsetAnimation = Tween(
                                    begin: const Offset(3.0, 0.0),
                                    end: const Offset(0.0, 0.0),
                                  ).animate(animation);
                                  // 3.
                                  return ClipRect(
                                    // 2.
                                    child: SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    ),
                                  );
                                },
                                child: AspectRatio(
                                  key: Key("${_index.value}-image"),
                                  aspectRatio:
                                      projects[index].mobile ? 9 / 16 : 12 / 9,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(projects[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )),
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                if (_index.value > 0) {
                  _index.value--;
                } else {
                  _index.value = projects.length - 1;
                }
              },
              iconSize: 50,
              icon: Icon(Icons.chevron_left_sharp),
            ),
            IconButton(
              onPressed: () {
                if (_index.value < projects.length - 1) {
                  _index.value++;
                } else {
                  _index.value = 0;
                }
              },
              iconSize: 50,
              icon: Icon(Icons.chevron_right),
            ),
          ],
        )
      ],
    );
  }
}
