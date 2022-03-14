import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/landing_screen/widget/cta_start.dart';

class OnBoardingFirstView extends StatelessWidget {
  const OnBoardingFirstView({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage(
                        'assets/images/onboarding0.png',
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Connect people\naround the world',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.white.withOpacity(0.6)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
