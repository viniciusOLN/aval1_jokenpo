import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final Function() onTap;
  final String urlImage;
  const OptionButton({
    Key key,
    this.onTap,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset(
          urlImage,
          width: 120,
        ),
      ),
    );
  }
}
