import 'package:flutter/material.dart';

class ProjectCard extends AnimatedWidget {
  ProjectCard({
    Key? key,
    this.top = null,
    this.bottom = null,
    this.left = null,
    this.right = null,
    this.elevation = 10,
    required this.selectedFactor,
    required this.animation,
    required this.width,
    required this.height,
  }) : super(key: key, listenable: animation);
  final double? top, bottom, left, right;
  final double width, height;
  final double elevation;
  final int selectedFactor;
  Animation<double> animation;

  // Animation<double> get animation => listenable;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(selectedFactor);
    return PhysicalModel(
      color: Colors.white,
      elevation: elevation,
      child: SizedBox(width: width, height: height),
      borderRadius: BorderRadius.circular(20),
      // shadowColor: Colors.white38,
    );
  }
}
