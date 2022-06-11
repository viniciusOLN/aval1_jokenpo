import 'package:flutter/material.dart';
import '../../controllers/game_controller.dart';
import '../../utils/constants.dart';
import 'widgets/option_button.dart';
import 'widgets/restart_button.dart';
import 'widgets/selected_option.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key key}) : super(key: key);

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  String _imageAtMoment = "padrao";
  String _userMove = "padrao";
  String _messageResult = "Escolha uma opção abaixo!";
  Gamecontroller controller = Gamecontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokenpo'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Text(
            'USUARIO: ${controller.userPoints} | APP: ${controller.appPoints}',
            style: kScoreGame,
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectedOption(
                textOption: "Escolha do app",
                urlImage: "images/$_imageAtMoment.png",
              ),
              const SizedBox(width: 50),
              SelectedOption(
                textOption: "Sua escolha",
                urlImage: "images/$_userMove.png",
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            _messageResult,
            style: kResultMessage,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.images.length,
                (index) {
                  String image = controller.images[index];
                  return OptionButton(
                    onTap: () {
                      setState(() {
                        _imageAtMoment = controller.generateAppPlay();
                        _messageResult = controller.checkHand(image);
                        _userMove = image;
                      });
                    },
                    urlImage: "images/$image.png",
                  );
                },
              ),
            ),
          ),
          Button(
            onPressed: () {
              setState(() {
                controller.reset();
                _imageAtMoment = 'padrao';
                _messageResult = 'Escolha uma opção abaixo!';
                _userMove = 'padrao';
              });
            },
            textButton: 'REINICIAR',
          ),
          const Text(
            'Alunos: Victor Cavalcante Vieira, João Victor Castro, Vinicius Oliveira',
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
