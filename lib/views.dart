library views;

import 'package:flutter/cupertino.dart';

import 'View.dart';

class Views extends StatelessWidget {
  const Views(
      {super.key,
      required this.views,
      required this.spacing,
      required this.shape,
      required this.border});

  final List<View> views;
  final double spacing;
  final BoxShape shape;
  final BorderRadius border;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: spacing,
        children: views
            .map((e) => Container(
                decoration: BoxDecoration(borderRadius: border, shape: shape),
                child: Image.network(e.image)))
            .toList());
  }
}
