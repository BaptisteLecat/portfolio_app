import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/widget/cta_start.dart';

class OnBoardingThirdView extends StatelessWidget {
  const OnBoardingThirdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFF3594DD),
            Color(0xFF4563DB),
            Color(0xFF5036D5),
            Color(0xFF5B16D0),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage(
                                    'assets/images/onboarding2.png',
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
                  /*Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                  ),*/
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CtaStart(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
