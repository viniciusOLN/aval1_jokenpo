import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../homepage/homepage_screen.dart';
import 'widgets/background_screen.dart';
import 'widgets/circular_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundScreen(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              "JOKENPO",
              style: kTitleSplashScreen,
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Center(
                    child: Image.asset("images/IMAGEM_LEGAL.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "COMEÇAR",
                        style: kSubtitleSplashScreen,
                      ),
                      const SizedBox(height: 15),
                      CircularButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaginaInicial(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
