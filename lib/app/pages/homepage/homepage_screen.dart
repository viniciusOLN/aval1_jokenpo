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
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'USUARIO: ${controller.userPoints} | APP: ${controller.appPoints}',
              style: kScoreGame,
            ),
          ),
          const SizedBox(height: 80),
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
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _messageResult,
              textAlign: TextAlign.center,
              style: kResultMessage,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(controller.images.length, (index) {
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
                    }),
                  ),
                ),
              ],
            ),
          ),
          Button(
            onPressed: () {
              setState(() {
                controller.reset();
                _imageAtMoment = 'padrao';
                _messageResult = '';
                _userMove = 'padrao';
              });
            },
            textButton: 'REINICIAR',
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Alunos: Victor Cavalcante Vieira, João Victor Castro, Vinicius Oliveira',
            ),
          )
        ],
      ),
    );
  }
}
