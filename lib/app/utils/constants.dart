import 'package:flutter/material.dart';

// COLORS

const kDefaultColor = Colors.deepPurple;
const List<Color> kGradientColors = [
  Colors.deepPurple,
  Color.fromARGB(255, 214, 134, 228),
];
const kDefaultColorText = Colors.white;
const kButtonPlayColor = Color.fromARGB(255, 146, 83, 254);

// TEXTSTYLES

const kTitleSplashScreen = TextStyle(
  color: kDefaultColorText,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.bold,
  fontSize: 40,
);
const kSubtitleSplashScreen = TextStyle(
  color: kDefaultColorText,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const kOptionSelected = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  fontFamily: 'Arial',
  color: Color.fromARGB(255, 82, 81, 81),
);

const kScoreGame = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 98, 98, 98),
);

const kResultMessage = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 63, 62, 62),
);
