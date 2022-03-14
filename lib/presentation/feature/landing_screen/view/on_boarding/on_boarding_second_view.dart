import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/widget/cta_start.dart';

class OnBoardingSecondView extends StatelessWidget {
  const OnBoardingSecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFF8A2387),
            Color(0xFFE94057),
            Color(0xFFf7797d),
          ],
        ),
      ),
      child: Stack(
        children: [
          ClipPath(clipper: MyPainter(),)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage(
                            'assets/images/onboarding1.png',
                          ),
                          height: 300.0,
                          width: 300.0,
                        )
                      ]),
                ),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Connect people\naround the world',
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}