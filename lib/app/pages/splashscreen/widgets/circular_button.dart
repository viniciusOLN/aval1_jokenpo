import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class CircularButton extends StatelessWidget {
  final Function() onTap;
  const CircularButton({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.onTap,
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: Icon(
          Icons.play_arrow,
          size: 40,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: kButtonPlayColor,
      ),
    );
  }
}
