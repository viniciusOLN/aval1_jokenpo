import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class BackgroundScreen extends StatelessWidget {
  final Widget child;
  const BackgroundScreen({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: kGradientColors,
        ),
      ),
      child: child,
    );
  }
}
