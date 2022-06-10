import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() onPressed;
  final String textButton;
  const Button({Key key, this.onPressed, this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
          child: Text(textButton),
        ),
      ),
    );
  }
}
