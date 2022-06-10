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
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "JOKENPO",
                style: kTitleSplashScreen,
              ),
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
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          "COMEÇAR",
                          style: kSubtitleSplashScreen,
                        ),
                      ),
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
