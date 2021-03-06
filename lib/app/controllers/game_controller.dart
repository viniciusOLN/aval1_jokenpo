import 'dart:math';

class Gamecontroller {
  int userPoints = 0;
  int appPoints = 0;
  String lastUserPlay = '';
  String lastAppPlay = '';
  String appRound;
  List<String> images = [
    "pedra",
    "papel",
    "tesoura",
  ];

  String generateAppPlay() {
    appRound = images[Random().nextInt(3)].toString();
    return appRound;
  }

  String checkHand(String userRound) {
    if ((lastUserPlay == "pedra" && userRound == "pedra")) {
      appPoints++;
      return "Não pode pedra mais de uma vez! Ponto pro App.";
    }

    if (lastAppPlay == "pedra" && appRound == "pedra") {
      userPoints++;
      return "Não pode pedra mais de uma vez! Ponto pro User.";
    }

    lastAppPlay = appRound;
    lastUserPlay = userRound;

    if ((userRound == "pedra" && appRound == "tesoura") ||
        (userRound == "tesoura" && appRound == "papel") ||
        (userRound == "papel" && appRound == "pedra")) {
      userPoints++;
      return "Você ganhou!";
    }

    if ((userRound == "tesoura" && appRound == "pedra") ||
        (userRound == "papel" && appRound == "tesoura") ||
        (userRound == "pedra" && appRound == "papel")) {
      appPoints++;
      return "O app venceu!";
    }

    return "Deu Empate!";
  }

  void reset() {
    userPoints = 0;
    appPoints = 0;
    lastAppPlay = '';
    lastUserPlay = '';
  }
}
