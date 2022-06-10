import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SelectedOption extends StatelessWidget {
  final String textOption;
  final String urlImage;
  const SelectedOption({
    Key key,
    this.textOption,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textOption,
          style: kOptionSelected,
        ),
        const SizedBox(height: 20),
        Image.asset(
          urlImage,
          height: 150,
        ),
      ],
    );
  }
}
